#! /home/aabl-lab/miniconda3/envs/qd/bin/python
import os
import rospy
import rosbag
from mbot_catching.msg import HF, EnvObs, EnvStat
import time
import re

class RosbagRecorder:
    def __init__(self):
        rospy.init_node('rosbag_recorder')

        self.rosbag_init()
        self.rosbag_record()
        rospy.on_shutdown(self.rosbag_save)
        
    def rosbag_init(self):
        """Set rosbag saving dir and filename and check if exp starts"""
        # get the number 'n' of data/exp_n
        def get_max_exp_number(directory, prefix):
                dirs = [d for d in os.listdir(directory) if os.path.isdir(os.path.join(directory, d)) and d.startswith(prefix)]
                max_number = 0
                for dir in dirs:
                    match = re.match(f'{prefix}(\d+)', dir)
                    if match:
                        number = int(match.group(1))
                        if number > max_number:
                            max_number = number
                
                return max_number
        project_path = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
        data_dir = os.path.join(project_path, "data")
        exp_prefix = 'exp_'
        if not os.path.exists(data_dir):
            os.makedirs(data_dir)
        max_exp_number = get_max_exp_number(data_dir, exp_prefix)
        new_exp_number = max_exp_number + 1
        new_exp_dir = os.path.join(data_dir, f'{exp_prefix}{new_exp_number}')
        os.makedirs(new_exp_dir)

        self.bag = rosbag.Bag(os.path.join(new_exp_dir, f'{exp_prefix}{new_exp_number}.bag'), 'w')
        
        # check ros parameter: is_start，if exp is not started yet, block
        rospy.loginfo("Waiting for the exp to start...")
        is_start = rospy.get_param('/is_start')
        while not is_start and not rospy.is_shutdown():
            rospy.sleep(0.01)  
            is_start = rospy.get_param('/is_start')

    def rosbag_record(self):
        """Start rosbag recording"""
        rospy.loginfo("Rosbag recording starts!")
        topics = [
            ('/exp/HF', HF),
            ('/exp/EnvObs', EnvObs),
            ('/exp/EnvStat', EnvStat)
        ]
        for topic_name, msg_type in topics:
            rospy.Subscriber(topic_name, msg_type, self.callback, callback_args=topic_name)
        
        rospy.spin()

    def callback(self, msg, topic_name):
        """Callback function for rosbag recording"""
        self.bag.write(topic_name, msg)

    def rosbag_save(self):
        """Handles clean shutdown of the node and saves the rosbag."""
        rospy.loginfo("gui recorder: Shutting down node, closing rosbag...")
        self.bag.close()
        rospy.set_param('is_start', False)
        rospy.loginfo("Rosbag successfully saved. Exp completed!")

if __name__ == "__main__":
    rosbag_recorder = RosbagRecorder()

