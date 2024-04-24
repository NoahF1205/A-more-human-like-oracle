from mbot_control import MbotSim

def customized_mbot_trajectory(mbot):
    """Mbot_trajectory design:
        Randomly move in 8 directions for random time
    """
    duration = [0.1, 0.3, 0.5, 1.0]
    speed = [0.1, 0.3, 0.5]
    mbot.move_mbot(direction, speed, duration)