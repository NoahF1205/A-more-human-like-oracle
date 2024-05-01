from beepy import beep
import rospy
import time
#1 4 
if __name__ == '__main__':
    while True:
        start= time.time()
        beep(sound=1)
        duration = time.time() - start
        rospy.sleep(1.5 - duration)
        print(time.time() - start)

