from arm_control import arm_sim
import numpy as np

action = [0.3, 0.3, 0.4, 1.5799180530025816, -0.01589837991006801, 2.61771051765151, 0]
#action = [0.3, 0.4, 0.3, 1.5799180530025816, -0.01589837991006801, 2.61771051765151, 0]
if __name__ == '__main__':
    arm = arm_sim()
    arm.reset()
    arm.step(action)
    # range_x = -5
    # range_y = -5
    # failed_pose = False

    # while not failed_pose:
    #     action[0] = range_x
    #     action[1] = range_y
    #     _, _, failed_pose, _ = arm.step(action) 

        # range_y += 0.01

            
