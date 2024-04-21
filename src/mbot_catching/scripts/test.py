from arm_control import arm_sim
from mbot_control import MbotSim
import numpy as np
import time

# home_pose = [0.576103925704956, 0.0021510878577828407, 0.43399396538734436, 1.5707133693269406, -0.0009434863237384807, 1.5723171249353864, 0]
# action = [0.6, 0.6, 0.2, 1.5707133693269406 + np.pi/2, -0.0009434863237384807, 1.5723171249353864, 0]
# action_1 = [0.3, 0.3, 0.3, 1.5799180530025816 , -0.01589837991006801, 2.61771051765151, 0]
# action_2 = [0.3, 0.3, 0.1, 1.5799180530025816 + np.pi/2 , -0.01589837991006801, 2.61771051765151 , 0]
# action_3 = [0.3, 0.3, 0.2, 1.5799180530025816 + np.pi/2 , -0.01589837991006801, 2.61771051765151 , 0]
# action_4 = [0.2, 0.4, 0.3, 1.5799180530025816 + np.pi/2 , -0.01589837991006801, 2.61771051765151 , 0]
if __name__ == '__main__':
    # arm = arm_sim()
    # arm.reset()
    # print("home pose" , arm.get_cartisian_state())
    # arm.step(action)
    # print(arm.step(action_1))
    # print(arm.step(action_2)) 
    # print(arm.step(action_3)) 
    # print(arm.step(action_4))

    mbot = MbotSim()
    mbot.reset()
    # print(mbot.get_model_state())
    mbot.move_mbot(0, 0.1, 1)
    mbot.move_mbot(1, 0.1, 1)
    mbot.move_mbot(2, 0.1, 1)
    mbot.move_mbot(3, 0.1, 1)
    mbot.move_mbot(4, 0.1, 1)
    mbot.move_mbot(5, 0.1, 1)
    mbot.move_mbot(6, 0.1, 1)
    mbot.move_mbot(7, 0.1, 1)    