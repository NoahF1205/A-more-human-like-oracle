#! /home/aabl-lab/miniconda3/envs/qd/bin/python
import tkinter as tk
from tkinter import messagebox
from PIL import Image, ImageTk
import os
import rospy
import rosbag
from threading import Thread
from mbot_catching.msg import HF, EnvObs, EnvStat
import re
import threading
import beepy
import time
import sys

class GUIRecorder:
    def __init__(self):
        rospy.init_node('gui_recorder')
        # self.freq = rospy.get_param('~frequency', default=1.5)  # get frequency from ros parameter 

        self.pub = rospy.Publisher('/exp/HF', HF, queue_size=10)
        self.key_to_hf = {
            'a': -2,
            's': -1,
            'd': 0,
            'f': 1,
            'g': 2
        }
        is_start = rospy.get_param('/is_start')
        while not is_start and not rospy.is_shutdown():
            rospy.sleep(0.01)  
            is_start = rospy.get_param('/is_start')
        self.gui_start_event = threading.Event()
        self.gui_start_event.clear()
        self.gui_thread = Thread(target=self.init_gui)
        self.gui_thread.start()
        self.gui_start_event.wait()
        self.run_experiment()
        rospy.on_shutdown()
        
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
        for button in self.buttons:
                    button.config(bg="yellow")
        try:
            if self.is_hf == False and rospy.get_param("/start_recording"):
                hf_value = button_num - 3
                self.hf_value = hf_value
                self.delay = (rospy.Time.now() - self.start_time).to_sec()
                self.publish_feedback(self.seq, hf_value, (rospy.Time.now() - self.start_time).to_sec())
                self.seq += 1
                self.is_hf = True
        except AttributeError:
            pass

    def resize_image(self, image, maxsize):
        r1 = image.size[0]/ maxsize[0]
        r2 = image.size[1] / maxsize[1]
        ratio = max(r1, r2)
        newsize = (int(image.size[0]/ratio), int(image.size[0]/ratio))
        image = image.resize(newsize, Image.Resampling.LANCZOS)
        return image

    def check_if_exp_finished(self):
        if rospy.get_param("/is_ended"):
            messagebox.showinfo("exp status", "Exp ended! Mission complete!")
            time.sleep(1)
            self.root.destroy()
        else:
            self.root.after(100, self.check_if_exp_finished)

    # initialize gui windows
    def init_gui(self):
        root = tk.Tk()
        frame = tk.Frame(root)
        root.title("Recorder")

        root.geometry("1200x200")
        buttons = []

        this_file_path = os.path.dirname(os.path.abspath(__file__))
        image_dir = os.path.join(this_file_path, "images")
        print(image_dir)
        image_paths = ["Weary.png", "Disappointed.png", "Neutral.png", "Smiling.png", "Grinning.png"]
        button_labels = ["Very Dissatisfied", "Dissatisfied", "Neutral", "Satisfied", "Very Satisfied"]
        for i, image_path in enumerate(image_paths, start=1):
            frame = tk.Frame(root)
            frame.pack(side=tk.LEFT, padx=20, pady=20)
            image_path = os.path.join(image_dir, image_path)
            image = Image.open(image_path)
            image = self.resize_image(image, [60,60])
            photo = ImageTk.PhotoImage(image)
            button = tk.Button(frame, image=photo, width=100, height=100, command=lambda i=i: self.on_click(i))
            button.image = photo
            button.pack()
            label_widget = tk.Label(frame, text=button_labels[i-1], font=("Arial", 20))
            label_widget.pack()
            buttons.append(button)

        self.buttons = buttons
        # for button in buttons:
        #     button.pack(side=tk.LEFT, padx=10, pady=20)
        # self.buttons = buttons
        self.root = root
        self.gui_start_event.set()
        self.root.after(100, self.check_if_exp_finished)
        self.root.mainloop()

    def run_experiment(self):
        """HF inquiry procedure"""
        rospy.loginfo("Exp started, HF inquiry procedure will commence.")
        self.seq = 0
        self.start_time = rospy.Time.now()
        self.is_hf = False
        for button in self.buttons:
            button.config(background="yellow")
        recording_flag = True
        while not rospy.is_shutdown():
            if rospy.get_param("/start_recording") and recording_flag == False:
                self.is_hf = False
                recording_flag = True
                self.start_time = rospy.Time.now()
                for button in self.buttons:
                    button.config(bg="blue")
            if (not rospy.get_param("/start_recording")) and recording_flag == True:
                recording_flag = False
                for button in self.buttons:
                    button.config(bg="yellow")
                if not self.is_hf:
                    self.publish_feedback(self.seq, float('nan'), float('nan'))
                    self.seq += 1

if __name__ == "__main__":
    start_record = GUIRecorder()

