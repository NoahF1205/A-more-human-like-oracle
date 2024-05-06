import rospy 
import rosbag
import os
from mbot_catching.msg import EnvObs, EnvStat, HF
# from mbot_catching.msg import HF

def read_bag_in_folders(folder_path):
    bag_files = []
    bag_dir = folder_path
    # read all files end with .bag
    for exp_folder in os.listdir(bag_dir):
        if exp_folder.startswith('exp_'):
            # read bag
            bag_file = os.path.join(bag_dir, exp_folder, f"{exp_folder}.bag")
            if os.path.exists(bag_file):
                bag_files.append(bag_file)
                print(f"reading bag file: {bag_file}")
            
    return bag_files


stat_type = EnvStat()
obs_type = EnvObs()
hf_type = HF()
def read_data_in_bag_files(bag_files):
    results = []
    for bag_file in bag_files:
        print(f"opening {bag_file}")
        with rosbag.Bag(bag_file,"r") as bag:
            result = {"obs":[], "stat":[], "hf":[]}
            # for topic, msg, t in bag.read_messages():
            #     print(t)
            for topic, msg, t in bag.read_messages(raw=True):
                    # print(topic, msg, t)
                # print(topic)
                if topic == "/exp/EnvObs":
                    try:
                        readable_msg = obs_type.deserialize(msg[1])
                        # print(readable_msg.header.seq)
                        while(readable_msg.header.seq > len(result["obs"])+1):
                            result["obs"].append(None)
                        result["obs"].append(dict(
                            cartesian_state = readable_msg.cartesian_state
                        ))
                    except Exception as e:
                        # print(msg)
                        print("skipping!")
                        # result["obs"].append(None)
                        continue

                elif topic == "/exp/EnvStat":
                    
                    try:
                        readable_msg = stat_type.deserialize(msg[1])
                        # print(readable_msg.header.seq)
                        while(readable_msg.header.seq > len(result["stat"])+1):
                            result["stat"].append(None)
                        result["stat"].append(dict(
                            seq = readable_msg.header.seq,
                            optimal_policy = readable_msg.optimal_policy,
                            action = readable_msg.action,
                            reward = readable_msg.reward
                        ))
                    except Exception as e:
                        print("add none!")
                        # result["stat"].append(None)
                        continue
                       
                elif topic == "/exp/HF":
                    # rule out the first HF, which is invalid
                    # if len(result) == 0:
                    #     continue
                    # else:
                    #     result[-1].update(dict(
                    #         hf_value = msg.hf_value,
                    #         delay = msg.delay
                    #     ))
                    readable_msg = hf_type.deserialize(msg[1])
                    result["hf"].append(dict(
                        hf_value = readable_msg.hf_value,
                            delay = readable_msg.delay
                    ))
            results.append(result)
    return results


if __name__ == "__main__":
    path = "/home/aabl-lab/prob-rob-final/A-more-human-like-oracle/src/mbot_catching/data"
    bag_files = read_bag_in_folders(path)
    results = read_data_in_bag_files(bag_files)
    for i in range(len(results)):
        print({k:len(obj) for k,obj in results[i].items()})
    print([v['seq'] for v in results[3]["stat"] if v != None])
    print([v for v in results[3]["stat"] if v == None])
    # print(results[0])



