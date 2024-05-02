# A Gym-style experiment environment for the mbot_catching task.
# TODO: figure out the scale of the state and action space

import rospy
import numpy as np
from .arm_control import ArmSim
from .mbot_control import MbotSim
import gymnasium.spaces as spaces
import threading

TARGET_Z = 0.05
SUCCESS_THRESHOULD = 0.05

home_pose = [0.576103925704956, 0.0021510878577828407, 0.43399396538734436, 1.5707133693269406, -0.0009434863237384807, 1.5723171249353864, 0]
action_home= [0.2, 0.4, 0.3, 1.5799180530025816 + np.pi/2 , 0, 2.61771051765151 , 0]
#-0.01589837991006801

class MbotCatchingEnv:
    def __init__(self):
        rospy.init_node('experiment', anonymous=True)
        self.mbot_sim = None
        self.arm_sim = None
        self.seed = 0
        self.action_dim = 7
        self.action_spc = spaces.Box(low=-1, high=1, shape=(self.action_dim,), dtype=np.float32)
        self.obs = 12
        self.state = None
        self.done = False
        self.mbot_initialized = threading.Event()
        self.arm_initialized = threading.Event()
        self.mbot_enable_move = True
        self.target_z = 0.05


        # Register shutdown hook to reset mbot_catching_world
        self.initialize_sims()
        # # thread = threading.Thread(target=customized_mbot_trajectory,args=[self.mbot_sim])
        # thread.start()
        
        rospy.on_shutdown(self.reset)
        
        # self.stop_thread = threading.Event()
        # self.stop_thread.set()
        # self.stop_thread.clear()
        # self.mbot_moving_thread = threading.Thread(target=self.mbot_random_move())
        # self.mbot_moving_thread.start()
        rospy.loginfo("init done!")

    def initialize_sims(self):
        # Initialize Armsim and Mbotsim in seperate threads
        mbot_thread = threading.Thread(target=self.init_mbot_sim)
        arm_thread  = threading.Thread(target=self.init_arm_sim)
        mbot_thread.daemon = True
        arm_thread.daemon = True
        mbot_thread.start()
        arm_thread.start()
        self.mbot_initialized.wait()
        self.arm_initialized.wait()


    def init_mbot_sim(self):
        self.mbot_sim = MbotSim()
        rospy.loginfo("MbotSim is initialized!")
        self.mbot_initialized.set()

    def init_arm_sim(self):
        self.arm_sim = ArmSim()
        rospy.loginfo("ArmSim is initialized!")
        self.arm_initialized.set()


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
        eef_action = action[-1]
        # TODO: step need to be blocked until the action is finished
        current_state = self.arm_sim.get_cartisian_state()
        current_state.append(0)
        # add gripper state
        current_state = np.array(current_state, dtype=np.float32)
        # print("current state: ", current_state)
        # print("action: ", action)
        action = current_state + action
        # self.do_random_move()
        if self.mbot_enable_move:
            self.mbot_sim.random_move()
        _, _, self.done, _ = self.arm_sim.step(action)
        self.arm_sim.arm.send_gripper_command(eef_action)
        
        self.state = self.get_state()
        done = self.check_done(self.state, action)
        reward = self.calculate_reward()
        return self.state, reward, done, None


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
    
    def check_done(self, state, action):
        eef_xyz = state[:3]
        mbot_xy = state[-2:]
        target = np.concatenate([mbot_xy, [TARGET_Z]])
        dist = np.sum(np.square(eef_xyz - target))
        dist = np.sqrt(dist)
        return dist <= SUCCESS_THRESHOULD and action[-1] == 1
    # def mbot_random_move(self):
    #     while not self.stop_thread.is_set():
    #             customized_mbot_trajectory(self.mbot_sim)

    # def do_random_move(self):
    #     if not self.stop_thread.is_set():
    #         self.stop_thread.clear()
    #     else:
    #         self.stop_thread.clear()
    
    # def stop_random_move(self):
    #     self.stop_thread.set()

    
    @property
    def action_space(self):
        return self.action_spc
    
    # TODO: correct the observation space
    @property
    def observation_space(self):
        return self.obs_space
    
    def safe_exits(self):
        self.reset()  
    
    def disable_mbot_moving(self):
        self.mbot_enable_move = False
        

if __name__ == "__main__":
    # test the environment
    env = MbotCatchingEnv()
    env.reset()