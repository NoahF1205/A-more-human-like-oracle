# A Gym-style experiment environment for the mbot_catching task.
# TODO: figure out the scale of the state and action space

import rospy
import numpy as np
from arm_control import ArmSim
from mbot_control import MbotSim
import gymnasium.spaces as spaces


home_pose = [0.576103925704956, 0.0021510878577828407, 0.43399396538734436, 1.5707133693269406, -0.0009434863237384807, 1.5723171249353864, 0]
action_home= [0.2, 0.4, 0.3, 1.5799180530025816 + np.pi/2 , -0.01589837991006801, 2.61771051765151 , 0]

class MbotCatchingEnv:
    def __init__(self):
        # rospy.init_node('mbot_catching_env', anonymous=True)
        self.mbot_sim = MbotSim()
        self.arm_sim = ArmSim()
        self.seed = 0
        self.action_dim = 7
        self.action_spc = spaces.Box(low=-1, high=1, shape=(self.action_dim,), dtype=np.float32)
        self.obs = 12
        self.state = None
        self.done = False

    def reset(self):
        self.mbot_sim.reset()
        self.arm_sim.reset()
        # go to custom home pose
        self.arm_sim.step(home_pose)
        self.arm_sim.step(action_home)
        self.done = False
        self.state = self.get_state()
        self.previous_distance = self.get_distance()
        return self.state
    
    def step(self, action):
        # TODO: step need to be blocked until the action is finished
        current_state = self.arm_sim.get_cartisian_state()
        current_state.append(0)
        # add gripper state
        current_state = np.array(current_state, dtype=np.float32)
        print("current state: ", current_state)
        print("action: ", action)
        action = current_state + action
        _, _, self.done, _ = self.arm_sim.step(action)
        self.state = self.get_state()
        reward = self.calculate_reward()
        return self.state, reward, self.done, None

    def get_state(self):
        mbot_state = self.mbot_sim.get_model_state()
        # print(mbot_state)
        mbot_pos_x = mbot_state.pose.position.x
        mbot_pos_y = mbot_state.pose.position.y
        mbot_pos = np.array([mbot_pos_x, mbot_pos_y])
        arm_state = self.arm_sim.get_cartisian_state()
        return np.concatenate([arm_state, mbot_pos])
    
    def calculate_reward(self):
        distance = self.get_distance()
        distance_diff = self.previous_distance - distance
        if self.done:
            return -100
        if not self.robot_safe_zone():
            return -10
        self.previous_distance = distance
        return distance_diff
    
    def get_distance(self):
        mbot_state = self.mbot_sim.get_model_state()
        arm_state = self.arm_sim.get_cartisian_state()
        mbot_position = np.array([mbot_state.pose.position.x, mbot_state.pose.position.y])
        arm_position = np.array(arm_state[:2])
        return np.linalg.norm(mbot_position - arm_position)
    
    def robot_safe_zone(self):
        # TODO: finish this function
        mbot_state = self.mbot_sim.get_model_state()
        mbot_position = np.array([mbot_state.pose.position.x, mbot_state.pose.position.y])
        return np.linalg.norm(mbot_position) < 0.5
    
    @property
    def action_space(self):
        return self.action_spc
    
    # TODO: correct the observation space
    @property
    def observation_space(self):
        return self.obs_space