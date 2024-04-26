from arm_control import ArmSim
from mbot_control import MbotSim
from customized_mbot_trajectory import customized_mbot_trajectory
import numpy as np
import time
import rospy

# home_pose = [0.576103925704956, 0.0021510878577828407, 0.43399396538734436, 1.5707133693269406, -0.0009434863237384807, 1.5723171249353864, 0]
# action = [0.6, 0.6, 0.2, 1.5707133693269406 + np.pi/2, -0.0009434863237384807, 1.5723171249353864, 0]
# action_1 = [0.3, 0.3, 0.3, 1.5799180530025816 , -0.01589837991006801, 2.61771051765151, 0]
# action_2 = [0.3, 0.3, 0.1, 1.5799180530025816 + np.pi/2 , -0.01589837991006801, 2.61771051765151 , 0]
if __name__ == '__main__':
    rospy.init_node("1")
    arm_sim = ArmSim()
    mbot_sim = MbotSim()
    customized_mbot_trajectory(mbot=mbot_sim)
