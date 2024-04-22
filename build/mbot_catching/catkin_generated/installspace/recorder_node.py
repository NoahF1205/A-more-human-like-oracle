"""
1. get the arg: frequency
2.if 'ctrl c' pressed, stop and save rosbag recording
3. start a timer
5. detect keyboard input
6. publish feedback: id, hf value, delay
7. go back to 3
"""
#!/home/noahfang/miniconda3/envs/RL_Lab/bin/python
import rospy
from mbot_catching.msg import ExperimentData
from threading import Thread
import sys
import select
import rosbag
import time
import os
import re
import keyboard

class ExperimentRecorder:
    def __init__(self):
        rospy.init_node('experiment_recorder')
        self.freq = rospy.get_param('~frequency')  # 从参数服务器获取频率

        self.pub = rospy.Publisher('/exp/experiment_recording_flow', ExperimentData, queue_size=10)
        self.counter = 0
        
        self.rosbag_init()
        self.run_experiment()

        # Start recording data in a separate thread
        self.recording_thread = Thread(target=self.rosbag_record)
        self.recording_thread.start()

        # Register shutdown hook to handle clean exits
        rospy.on_shutdown(self.rosbag_save)

    def rosbag_init(self):
        # todo:检索列表查看到了第n个exp，创建目录./data/exp_n
        data_dir = './data'
        exp_prefix = 'exp_'
        if not os.path.exits(data_dir):
            os.makedirs(data_dir)
        max_exp_number = get_max_exp_number(data_dir, exp_prefix)

        new_exp_number = max_exp_number + 1
        new_exp_dir = os.path.join(data_dir, f'{exp_prefix}{new_exp_number}')
        os.makedirs(new_exp_dir)

        self.bag = rosbag.Bag(os.path.join(new_exp_dir, f'{exp_prefix}{new_exp_number}.bag'), 'w')
        
        def get_max_exp_number(directory, prefix):
                # 获取所有匹配的目录名
                dirs = [d for d in os.listdir(directory) if os.path.isdir(os.path.join(directory, d)) and d.startswith(prefix)]
                
                # 使用正则表达式提取数字部分，并找出最大值
                max_number = 0
                for dir in dirs:
                    match = re.match(f'{prefix}(\d+)', dir)
                    if match:
                        number = int(match.group(1))
                        if number > max_number:
                            max_number = number
                
                return max_number
    
    def rosbag_record(self):
        rospy.loginfo("Rosbag recording starts!")
        topic_name = '/exp/experiment_recording_flow'
        sub = rospy.Subscriber(topic_name, ExperimentData, callback)
        rospy.spin()
        def callback(msg):
            self.bag.write(topic_name, msg)

    def rosbag_save(self):
        """Handles clean shutdown of the node and saves the rosbag."""12312312
        rospy.loginfo("Shutting down node, closing rosbag...")
        self.recording_thread.join()
        self.bag.close()
        self.set_param('is_start', False)
        rospy.loginfo("Rosbag successfully saved.")

    def publish_feedback(self, seq, hf_value, delay)
        feedback = ExperimentData()
        feedback.header.stamp = rospy.Time.now()
        feedback.header.seq = seq
        feedback.hf_value = hf_value
        feedback.delay = delay
        rospy.loginfo(f"Seq: {seq}, HF: {hf_value}, Delay: {elapsed_time:.2f} seconds")
        self.pub.publish(feedback)

    def run_experiment(self):
        # 检查ros parameter: is_start，如果catching game还没开始就先阻塞在这里
        rospy.loginfo("Waiting for the game to start...")
        is_start = rospy.get_param('/is_start')
        while not is_start and not rospy.is_shutdown():
            rospy.sleep(0.1)  # 间隔一段时间检查参数
            is_start = rospy.get_param('/is_start')
        rospy.loginfo("Game started, recording will commence.")

        seq = 0
        key_to_hf = {
            'a': -2,
            's': -1,
            'd': 0,
            'f': 1,
            'g': 2
        }
        while not rospy.is_shutdown():
            start_time = time.time()
            is_hf = False
            rospy.loginfo("Feel free to type emoji taged keys as your feedback!")
            while True:
                rospy.sleep(0.01)
                if time.time() - start_time > self.freq:
                    if not is_hf: 
                        self.publish_feedback(seq, None, None)
                    seq += 1    
                    break
                if keyboard.is_pressed('a') or keyboard.is_pressed('s') or keyboard.is_pressed('d') or keyboard.is_pressed('f') or keyboard.is_pressed('g'):
                    pressed_key = None
                    for key in key_to_hf:
                        if keyboard.is_pressed(key):
                            pressed_key = key
                            break
                    if pressed_key:
                        hf_value = key_to_hf[pressed_key]
                        delay = time.time() - start_time
                        self.publish_feedback(seq, hf_value, delay)
                        is_hf = True
                        rospy.loginfo(f"Key '{pressed_key}' is pressed, the represented feedback value is {hf_value}.")
                        rospy.sleep(freq - delay)     
