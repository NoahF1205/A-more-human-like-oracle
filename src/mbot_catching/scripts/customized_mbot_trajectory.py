from mbot_control import MbotSim
import random

def customized_mbot_trajectory(mbot):
    """Mbot_trajectory design:
        Randomly move in 8 directions for random time
    """
    # todo: 1.there should be a is_end=True/False setting when exp node starts and ends
    #       2. should have some pause time whithin the move_bot func to make sure it get the right place
    durations = [0.1, 0.3, 0.5, 1.0]
    velocities = [0.1, 0.3, 0.5]
    directions = np.arange(8)
    while not rospy.get_param('/is_end'):
        v = random.choice(velocities)
        di = random.choice(directions)
        du = random.choice(durations)    
        mbot.move_mbot(di, v, du)
    