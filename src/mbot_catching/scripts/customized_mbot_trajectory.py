from mbot_control import MbotSim
import numpy as np
import random
import rospy

def customized_mbot_trajectory(mbot):
    """Mbot_trajectory design:
        Randomly move in 8 directions for random time
    """
    rospy.loginfo("random moving!")
    # todo:1. should have some pause time whithin the move_bot func to make sure it get the right place
    durations = [0.1, 0.3, 0.5, 1.0]
    velocities = [0.1/2, 0.3/2, 0.5/2]
    directions = np.arange(8)
    while True:
        v = random.choice(velocities)
        di = random.choice(directions)
        du = random.choice(durations)    
        mbot.move_mbot(di, v, du)

    