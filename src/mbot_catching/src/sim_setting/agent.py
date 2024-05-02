import numpy as np
import rospy
SAFE_ZONE_MIN = 0.2
SAFE_ZONE_MAX = 0.6
SAFE_Z = 0.2
Z_MAX = 0.6
Z_MIN = 0.03
SUCCESS_THRESHOULD = 0.05

class ExperimentAgent:
    def __init__(self, 
                 env,
                 noise_eps=0.5,):
        self.env = env
        self.action_space = env.action_space
        # self.observation_space = env.observation_space
        self.epsilon = noise_eps
        self.start_epsilon = noise_eps
        self.mbot_height = 0.05
        self.discrete_actions = {"forward": np.array([1, 0, 0, 0, 0, 0, 0]),
                                 "backward": np.array([-1, 0, 0, 0, 0, 0, 0]),
                                 "left": np.array([0, 1, 0, 0, 0, 0, 0]),
                                 "right": np.array([0, -1, 0, 0, 0, 0, 0]),
                                 "up": np.array([0, 0, 1, 0, 0, 0, 0]),
                                 "down": np.array([0, 0, -1, 0, 0, 0, 0]),
                                 "forward_left": np.array([1, 1, 0, 0, 0, 0, 0]),
                                 "forward_right": np.array([1, -1, 0, 0, 0, 0, 0]),
                                 "backward_left": np.array([-1, 1, 0, 0, 0, 0, 0]),
                                 "backward_right": np.array([-1, -1, 0, 0, 0, 0, 0]),
                                 "stop": np.array([0, 0, 0, 0, 0, 0, 0])}
        self.max_action_scale = 0.1
        self.step = 0
        self.min_epsilon = 0.1
        self.decay_steps = 50
    def get_action(self, state):
        if self.check_success(state):
            action = self.discrete_actions["stop"]
            eef_action = 1
            action[-1] = eef_action
            return action
        # get action, action is optimal + noise
        do_random = np.random.uniform(0, 1) < self.epsilon
        if do_random:
            action = self.get_random_action(state)
        else:
            action = self.get_optimal_action(state)
            if action is None:
                action = self.head_to_safe_zone(state)
        if self.epsilon > 0:
            self.noise_decay()
        return action

    def get_optimal_action(self, state):
        eef_pos = state[:6]
        mbot_pos = state[6:]
        # sc = self.max_action_scale
        sc = np.random.uniform(0, self.max_action_scale)
        distance_x_y = mbot_pos - eef_pos[:2]
        distance_z = self.mbot_height - eef_pos[2]
        # choose the action that minimize the distance
        simulated_delta = {k: np.sqrt(np.sum(np.power(distance_x_y + v[:2]*sc,2)) + np.power(distance_z + v[2]*sc,2)) for k, v in self.discrete_actions.items()}
        # print(simulated_delta)
        # zip delta with action index and sort by delta
        optimal_actions = sorted(simulated_delta, key=lambda k: simulated_delta[k].mean(), reverse=True)
        state_after_action = {k: eef_pos + v[:6]*sc for k, v in self.discrete_actions.items()}
        # check if the action is safe
        for k in optimal_actions:
            if self.check_safe(state_after_action[k]):
                return self.discrete_actions[k] * sc
        return None
        # optimal_action = min(simulated_delta, key=lambda k: simulated_delta[k].mean())
        # print(f"optimal action: {optimal_action}")
        # return self.discrete_actions[optimal_action]
    
    def head_to_safe_zone(self, state):
        action = self.check_safest_action(state)
        return action

    def check_safest_action(self, state):
        eef_pos = state[:6]
        sc = np.random.uniform(0, self.max_action_scale)
        safe_zone_middle =  (SAFE_ZONE_MIN + SAFE_ZONE_MAX) / 2
        state_after_action = {k: eef_pos + v[:6]*sc for k, v in self.discrete_actions.items()}
        dist_to_base_after_action = {k: np.sqrt(v[0]**2+v[1]**2) for k, v in state_after_action.items()}
        safe_actions = sorted(dist_to_base_after_action, key=lambda k: np.abs(safe_zone_middle - dist_to_base_after_action[k]) + np.abs((state_after_action[k][2] - SAFE_Z)))
        return self.discrete_actions[safe_actions[0]]

    def disable_random_move(self):
        self.epsilon = 0
    
    def get_random_action(self, state):
        # get random action, need to make sure the action is safe
        random_key = np.random.choice(list(self.discrete_actions.keys()))
        action = self.discrete_actions[random_key]
        sc = np.random.uniform(0, self.max_action_scale)
        action = action*sc
        eef_pos = state[:6]
        state_after_action = eef_pos + action[:6]
        while not self.check_safe(state_after_action):
            random_key = np.random.choice(list(self.discrete_actions.keys()))
            action = self.discrete_actions[random_key]
            action_scale = np.random.uniform(0, self.max_action_scale)
            action = action*(action_scale)
            state_after_action = eef_pos + action[:6]
        return action 
    def check_safe(self, state):
        eef_xy = state[:2]
        eef_distance = np.linalg.norm(eef_xy, ord=2)
        print(f"eef_distance: {eef_distance}")
        eef_z = state[2]
        return (SAFE_ZONE_MIN < eef_distance < SAFE_ZONE_MAX) and (Z_MIN < eef_z < Z_MAX)
    
    def check_success(self,state:np.ndarray):
        eef_xyz = state[:3]
        mbot_xy = state[-2:]
        target = np.concatenate([mbot_xy, [self.mbot_height]])
        dist = np.sum(np.square(eef_xyz - target))
        dist = np.sqrt(dist)
        return dist <= SUCCESS_THRESHOULD
    
    def noise_decay(self):
        decay_rate = (self.start_epsilon - self.min_epsilon) / self.decay_steps
        self.epsilon = max(self.min_epsilon, self.epsilon-decay_rate)
        rospy.loginfo(f"current epsilon: {self.epsilon}")
        