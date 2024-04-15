from armpy import kortex_arm
from sensor_msgs.msg import JointState
import numpy as np
import rospy

class arm_sim:
    def __init__(self, seed=0):
        self.seed = seed
        np.random.seed(seed)
        self.arm = kortex_arm.Arm()

        rospy.init_node('arm_sim', anonymous=True)

    def get_state(self):
        state = rospy.wait_for_message(
            f"{self.arm.robot_name}/joint_states", JointState)
        return np.array(state.position[:])
    
    
    def seed(self, seed):
        self.seed = seed
        np.random.seed(seed)
    
    def reset(self):
        self.arm.home_arm()
        return self.get_state()
    
    def step(self, action):
        done = False
        is_arrived =  False
        count = 0
        # 这里一定要sleep等模拟器中动画播放完，不然action会执行到一半就结束
        while not is_arrived:
            self.arm.goto_cartesian_pose_sim(action, speed=1.)
            rospy.sleep(1.5)
            real_pose = self.arm.get_eef_pose()
            is_arrived =  True
            for i in range(6):
                if abs(real_pose[i] - action[i]) > 1e-2:
                    is_arrived = False
                    break
            count += 1
            if (count == 2):
                print("Irlegal Pose!")
                done = True
                break
        if action[-1] - 0.5 < 0.001:
            self.arm.send_gripper_command(0)
        else:
            self.arm.send_gripper_command(1)
            
        state = self.arm.get_eef_pose()
        reward = 0
        return state, reward, done, None
