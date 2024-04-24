import numpy as np



class ExperimentAgent:
    def __init__(self, 
                 env,
                 noise_eps=0.1,):
        self.env = env
        self.action_space = env.action_space
        # self.observation_space = env.observation_space
        self.epsilon = noise_eps
        self.mbot_height = 0.1
        self.discrete_actions = {"forward": np.array([1, 0, 0, 0, 0, 0, 0]),
                                 "backward": np.array([-1, 0, 0, 0, 0, 0, 0]),
                                 "left": np.array([0, 1, 0, 0, 0, 0, 0]),
                                 "right": np.array([0, -1, 0, 0, 0, 0, 0]),
                                 "up": np.array([0, 0, 1, 0, 0, 0, 0]),
                                 "down": np.array([0, 0, -1, 0, 0, 0, 0]),
                                 "forward_left": np.array([1, 1, 0, 0, 0, 0, 0]),
                                 "forward_right": np.array([1, -1, 0, 0, 0, 0, 0]),
                                 "backward_left": np.array([-1, 1, 0, 0, 0, 0, 0]),
                                 "backward_right": np.array([-1, -1, 0, 0, 0, 0, 0]),}
        self.max_action_scale = 0.1
    def get_action(self, state):
        # get action, action is optimal + noise
        do_random = np.random.uniform(0, 1) < self.epsilon
        if do_random:
            random_key = np.random.choice(list(self.discrete_actions.keys()))
            action = self.discrete_actions[random_key]
            action_scale = np.random.uniform(0, self.max_action_scale)
            action = action*(action_scale)
        else:
            action = self.get_optimal_action(state)
            # generate random scale
            action_scale = np.random.uniform(0, self.max_action_scale)
            action = action*(action_scale)
        return action

    def get_optimal_action(self, state):
        eef_pos = state[:6]
        mbot_pos = state[6:]
        sc = self.max_action_scale
        distance_x_y = np.linalg.norm(mbot_pos - eef_pos[:2])
        distance_z = np.linalg.norm(self.mbot_height - eef_pos[2])
        # choose the action that minimize the distance
        simulated_delta = {k: (np.abs(distance_x_y + v[:2]*sc) + np.abs(distance_z + v[2]*sc)) for k, v in self.discrete_actions.items()}
        # print(simulated_delta)
        optimal_action = min(simulated_delta, key=lambda k: simulated_delta[k].mean())
        print(f"optimal action: {optimal_action}")
        return self.discrete_actions[optimal_action]