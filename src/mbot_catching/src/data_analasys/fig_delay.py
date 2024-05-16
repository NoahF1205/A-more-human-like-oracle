import os
import json
import matplotlib.pyplot as plt
import numpy as np

def euclidean_distance_to_car_difference(x1, x2):
    # input:x1,x2: 1x8 np array
    # first 6 are cartesian state, last 2 are car position
    # calc x1 and x2 dist to car and return the difference
    x1_xyz = x1[:3]
    x2_xyz = x2[:3]
    x1_car = x1[6:]
    x2_car = x2[6:]
    # from xy to xyz
    x1_car = np.concatenate([x1_car, np.array([0.05])])
    x2_car = np.concatenate([x2_car, np.array([0.05])])
    dist1 = np.linalg.norm(x1_xyz - x1_car)
    dist2 = np.linalg.norm(x2_xyz - x2_car)
    return dist1 - dist2



project_path = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
dict_path = os.path.join(project_path, "dict_data")

data_list = []

for filename in os.listdir(dict_path):
    if filename.startswith('exp_exp_') and filename.endswith('.json'):
        file_path = os.path.join(dict_path, filename)
        with open(file_path, 'r') as file:
            data = json.load(file)
            data_list.append(data)


print([len(data) for data in data_list])

hf_per_traj = []
delay_per_traj = []
reward_per_traj = []
reward_for_box_plt = [[],[],[],[],[]]


for i, iter in enumerate(data_list):
    hf_values = []
    delay = []
    objective_rewards = []
    for j, data in enumerate(iter):
        if data['obs_before'] is None or data['obs_after'] is None or data['hf'] is None:
            continue
        if np.isnan(data['hf']["hf_value"]):
            continue
        hf_values.append(np.array(data['hf']["hf_value"]))
        objective_rewards.append(euclidean_distance_to_car_difference(np.array(data['obs_before']["cartesian_state"]), np.array(data['obs_after']["cartesian_state"])))
        hf_value = int(data['hf']["hf_value"])
        reward_for_box_plt[hf_value + 2].append(euclidean_distance_to_car_difference(np.array(data['obs_before']["cartesian_state"]), np.array(data['obs_after']["cartesian_state"])))
        delay.append(data['hf']["delay"])
    hf_per_traj.append(hf_values)

    reward_per_traj.append(objective_rewards)
    delay_per_traj.append(delay)

average_delay_per_traj = [] 
for delay_traj in delay_per_traj:
    delay_traj = np.array(delay_traj)
    average_delay_per_traj.append(np.mean(delay_traj[~np.isnan(delay_traj)]))

participants = np.arange(len(average_delay_per_traj))
plt.bar(participants, average_delay_per_traj, color='blue', width=1.0, edgecolor='black')
plt.title('Feedback Delay per Participant')
plt.xlabel('Participants')
plt.ylabel('Average Delay')
plt.figure(figsize=(10, 6), dpi=300)
plt.show()
