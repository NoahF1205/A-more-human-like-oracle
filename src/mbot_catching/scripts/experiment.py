# file for the while experiment
import rospy
import numpy as np
from std_msgs.msg import String
from sim_setting.experiment_env import MbotCatchingEnv
from sim_setting.agent import ExperimentAgent
from mbot_catching.msg import EnvObs, EnvStat
import beepy
import time

from std_srvs.srv import Empty



EXP_DURATION_TIME= 120

def run_experiment():
    # # init ros node
    # rospy.init_node('experiment')
    # modified: called init_node in the class MbotCatchingEnv()

    # init env
    env = MbotCatchingEnv()
    # init agent
    agent = ExperimentAgent(env)
    # init envobs, envstat publisher
    obs_pub = rospy.Publisher('/exp/EnvObs', EnvObs, queue_size=10)
    stat_pub = rospy.Publisher('/exp/EnvStat', EnvStat, queue_size=10)
    # run experiment
    state = env.reset()
    rospy.sleep(1)
    done = False
    seq = 0
    exp_start_time = rospy.Time.now().secs
    while not done and not rospy.is_shutdown():
        rospy.set_param("/start_recording", False)
        beepy.beep(sound=4)
        obs = EnvObs()
        obs.header.stamp = rospy.Time.now()
        obs.header.seq = seq
        obs.cartesian_state = env.get_state()
        obs_pub.publish(obs)
        prev_state = state
        action = agent.get_action(state)
        state, reward, done, _ = env.step(action)
        # print("reward: ", reward)
        # print("state: ", state)
        # print("done: ", done)
        
        obs = EnvObs()
        obs.header.stamp = rospy.Time.now()
        obs.header.seq = seq
        obs.cartesian_state = env.get_state()
        obs_pub.publish(obs)

        stat = EnvStat()
        stat.header.stamp = rospy.Time.now()
        stat.header.seq = seq
        stat.optimal_policy = agent.get_optimal_action(prev_state)
        stat.action = action
        stat.reward = reward
        stat_pub.publish(stat)

        seq += 1
        rospy.set_param("/start_recording", True)
        beepy.beep(sound=1)
        rospy.sleep(1)
        curr_time = rospy.Time.now().secs
        if curr_time - exp_start_time >= EXP_DURATION_TIME:
            rospy.loginfo("reached exp duration time! Stopping mbot and disable random actions!")
            env.disable_mbot_moving()
            agent.disable_random_move()
            
    rospy.set_param("/is_ended", True)
    rospy.loginfo("Experiment done! Thank you!")
    rospy.wait_for_service('shutdown_rosbag')
    try:
        shutdown_service = rospy.ServiceProxy('shutdown_rosbag', Empty)
        shutdown_service()
    except rospy.ServiceException as e:
        print("Rosbag shutdown Service call failed: %s"%e)

if __name__ == '__main__':
    run_experiment()
