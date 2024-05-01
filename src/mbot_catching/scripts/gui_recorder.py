#! /home/wenchang/miniconda3/envs/oracle/bin/python
import tkinter as tk
from PIL import Image, ImageTk
import os
import rospy
import rosbag
from threading import Thread
from mbot_catching.msg import HF, EnvObs, EnvStat
import re


class GUIRecorder:
    def __init__(self):
        rospy.init_node('gui_recorder')
        self.freq = rospy.get_param('~frequency', default=1.5)  # get frequency from ros parameter 

        self.pub = rospy.Publisher('/exp/HF', HF, queue_size=10)
        self.key_to_hf = {
            'a': -2,
            's': -1,
            'd': 0,
            'f': 1,
            'g': 2
        }
        
        self.rosbag_init()
        # Start recording data with rosbag in a separate thread
        self.recording_thread = Thread(target=self.rosbag_record)
        self.recording_thread.start()
        
        # self.gui_root = self.init_gui()
        # self.gui_root.mainloop()
        self.gui_thread = Thread(target=self.init_gui)
        self.gui_thread.start()
        # Start feedback inquiry section
        self.run_experiment()

        # Register shutdown hook to handle clean exits
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
        rospy.sleep(1)

    def rosbag_record(self):
        """Start rosbag recording"""
        rospy.loginfo("Rosbag recording starts!")
        topics = [
            ('/exp/HF', HF),
            # ('/exp/EnvObs', EnvObs),
            # ('/exp/EnvStat', EnvStat)
        ]
        for topic_name, msg_type in topics:
            rospy.Subscriber(topic_name, msg_type, self.callback, callback_args=topic_name)
        
        rospy.spin()

    def callback(self, msg, topic_name):
        """Callback function for rosbag recording"""
        self.bag.write(topic_name, msg)

    def rosbag_save(self):
        """Handles clean shutdown of the node and saves the rosbag."""
        rospy.loginfo("Shutting down node, closing rosbag...")
        self.recording_thread.join()
        self.bag.close()
        rospy.set_param('is_start', False)
        rospy.loginfo("Rosbag successfully saved. Exp completed!")

    def publish_feedback(self, seq, hf_value, delay):
        """Publish HF"""
        feedback = HF()
        feedback.header.stamp = rospy.Time.now()
        feedback.header.seq = seq
        feedback.hf_value = hf_value
        feedback.delay = delay
        rospy.loginfo(f"Seq: {seq}, HF: {hf_value}, Delay: {delay:.2f} seconds")
        self.pub.publish(feedback)
        

    def on_click(self, button_num):
        try:
            if self.is_hf == False:
                hf_value = button_num - 3
                self.hf_value = hf_value
                self.delay = (rospy.Time.now() - self.start_time).to_sec()
                self.publish_feedback(self.seq, hf_value, (rospy.Time.now() - self.start_time).to_sec())
                self.is_hf = True
        except AttributeError:
            pass
    # initialize gui windows
    def init_gui(self):
        root = tk.Tk()
        root.title("Recorder")

        root.geometry("1200x200")
        buttons = []

        this_file_path = os.path.dirname(os.path.abspath(__file__))
        image_dir = os.path.join(this_file_path, "images")
        print(image_dir)
        image_paths = ["Weary.png", "Disappointed.png", "Neutral.png", "Smiling.png", "Grinning.png"]

        for i, image_path in enumerate(image_paths, start=1):
            image_path = os.path.join(image_dir, image_path)
            image = Image.open(image_path)
            photo = ImageTk.PhotoImage(image)
            button = tk.Button(root, image=photo, width=100, height=100, command=lambda i=i: self.on_click(i))
            button.image = photo
            buttons.append(button)


        for button in buttons:
            button.pack(side=tk.LEFT, padx=10, pady=20)

        root.mainloop()
    def run_experiment(self):
        """HF inquiry procedure"""
        rospy.loginfo("Exp started, HF inquiry procedure will commence.")
        self.seq = 0
        self.start_time = rospy.Time.now()
        self.is_hf = False
        rospy.loginfo("Feel free to type emoji tagged keys as your feedback!")
        while not rospy.is_shutdown():
            elapsed_time = (rospy.Time.now() - self.start_time).to_sec()
            if elapsed_time - self.freq > 1e-3:
                if self.is_hf:
                    self.publish_feedback(self.seq, self.hf_value, self.delay)
                else:
                    self.publish_feedback(self.seq, float('nan'), float('nan'))
                self.seq += 1
                self.start_time = rospy.Time.now()
                self.is_hf = False
                rospy.loginfo("Feel free to type emoji tagged keys as your feedback!")

if __name__ == "__main__":
    start_record = GUIRecorder()

