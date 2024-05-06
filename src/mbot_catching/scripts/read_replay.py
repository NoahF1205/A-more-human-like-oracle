import rospy
import json
from mbot_catching.msg import EnvObs, EnvStat,HF
import os

result = []

# def callback_stat(data):
#     rospy.loginfo("stat")
#     rospy.loginfo(data.header.seq)
#     result.append(data.header.seq)

# def callback_hf(data):
#     rospy.loginfo("hf")
#     rospy.loginfo(data.header.seq)
#     result.append(data.header.seq)
    

# def listener():
#     rospy.init_node('listener', anonymous=True)
#     rospy.Subscriber('exp/EnvStat', EnvStat, callback_stat)
#     rospy.Subscriber('exp/HF', HF, callback_hf)
#     rospy.spin()

class rosbagListener:
    def __init__(self, dict_path, bag_number):
        self.dict_path = dict_path
        self.stat_hf_data = []
        self.bag_num = bag_number
        project_path = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
        self.dict_path = os.path.join(project_path, "dict_data")
        dict_path = os.path.join(self.dict_path, f"exp_{self.bag_num}.json")
        if os.path.exists(dict_path):
            with open(dict_path, 'r') as file:
                self.existing_data = json.load(file)
                self.stat_hf_data[:] = self.existing_data[:]
        os.makedirs(self.dict_path, exist_ok=True)
        rospy.init_node("listener",anonymous=True)
        rospy.on_shutdown(self.save_dict)
        self.listener()

    def listener(self):
        rospy.Subscriber('exp/EnvStat', EnvStat, self.callback_stat)
        rospy.Subscriber('exp/HF', HF, self.callback_hf)
        rospy.spin()
    
    def callback_stat(self, data):
        rospy.loginfo(data.header.seq)
        data_dict = dict(
            seq = data.header.seq,
            optimal_policy = data.optimal_policy,
            action = data.action,
            reward = data.reward
        )
        self.stat_hf_data.append(data_dict)
        # if not any(data_dict["seq"] == item["seq"] for item in self.existing_data):
        #     self.stat_hf_data.append(data_dict)
    def callback_hf(self,data):
        data_dict = dict(
            seq = data.header.seq,
            hf_value = data.hf_value,
            delay = data.delay
        )
        # ignore first reward since it is invalid
        if len(self.stat_hf_data) == 0:
            pass
        else:
            assert not ('hf_value' in self.stat_hf_data[-1]), "wrong writing sequence!"
            self.stat_hf_data[-1].update(data_dict)
            # hf_seq = data_dict["seq"] - 1
            # if not any(data_dict["seq"] == item["seq"] for item in self.existing_data):


    def save_dict(self):
        rospy.loginfo(self.stat_hf_data)
        path = self.dict_path
        dict_path = os.path.join(path, f"exp_{self.bag_num}.json")
        # os.makedirs(dict_path, exist_ok=True)
        with open(dict_path, 'w') as f:
            json.dump(self.stat_hf_data, f , indent=4)


if __name__ == "__main__":
    print("start!")
    rosbagListener("", "1-2")
    