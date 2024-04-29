# file for the while experiment
import rospy
import numpy as np
from std_msgs.msg import String
from sim_setting.experiment_env import MbotCatchingEnv
from sim_setting.agent import ExperimentAgent
from mbot_catching.msg import EnvObs, EnvStat

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
    while not done:
        # todo: 1.Need to considerate the timing of publish the data
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
        rospy.sleep(1)

if __name__ == '__main__':
    run_experiment()
