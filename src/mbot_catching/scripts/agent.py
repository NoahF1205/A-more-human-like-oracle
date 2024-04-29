import numpy as np

SAFE_ZONE_MIN = 0.2
SAFE_ZONE_MAX = 0.6

class ExperimentAgent:
    def __init__(self, 
                 env,
                 noise_eps=0.1,):
        noise_eps = 0
        self.env = env
        self.action_space = env.action_space
        # self.observation_space = env.observation_space
        self.epsilon = noise_eps
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
    def get_action(self, state):
        # get action, action is optimal + noise
        do_random = np.random.uniform(0, 1) < self.epsilon
        if do_random:
            random_key = np.random.choice(list(self.discrete_actions.keys()))
            action = self.discrete_actions[random_key]
            # action_scale = np.random.uniform(0, self.max_action_scale)
            # action = action*(action_scale)
        else:
            action = self.get_optimal_action(state)
            # generate random scale
            action_scale = np.random.uniform(0, self.max_action_scale)
            action = action*(action_scale)
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
                return self.discrete_actions[k] 
        # optimal_action = min(simulated_delta, key=lambda k: simulated_delta[k].mean())
        # print(f"optimal action: {optimal_action}")
        # return self.discrete_actions[optimal_action]
    
    def get_random_action(self, state):
        # get random action, need to make sure the action is safe
        random_key = np.random.choice(list(self.discrete_actions.keys()))
        action = self.discrete_actions[random_key]
        action_scale = np.random.uniform(0, self.max_action_scale)
        action = action*(action_scale)
        state_after_action = state + action
        while not self.check_safe(state_after_action):
            random_key = np.random.choice(list(self.discrete_actions.keys()))
            action = self.discrete_actions[random_key]
            action_scale = np.random.uniform(0, self.max_action_scale)
            action = action*(action_scale)
            state_after_action = state + action
        return action 
    def check_safe(self, state):
        eef_xy = state[:2]
        eef_distance = np.linalg.norm(eef_xy, ord=2)
        print(f"eef_distance: {eef_distance}")
        return (SAFE_ZONE_MIN < eef_distance < SAFE_ZONE_MAX)