# file for the while experiment
import rospy
import numpy as np
from std_msgs.msg import String
from experiment_env import MbotCatchingEnv
from agent import ExperimentAgent

def run_experiment():
    # init ros node
    rospy.init_node('experiment')

    # init env
    env = MbotCatchingEnv()
    # init agent
    agent = ExperimentAgent(env)


    # set up publisher, publish experiment start, for activate timing node
    # TODO: COMPLETE THIS WITH TIMING NODE
    pub = rospy.Publisher('experiment_start', String, queue_size=10)
    pub.publish('start')

    # run experiment
    state = env.reset()
    rospy.sleep(1)
    done = False
    while not done:
        action = agent.get_action(state)
        state, reward, done, _ = env.step(action)
        print("reward: ", reward)
        print("state: ", state)
        print("done: ", done)
        rospy.sleep(1)

if __name__ == '__main__':
    run_experiment()
