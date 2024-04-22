import sys
import rospy

if __name__ == '__main__':
    rospy.init_node('exit_with_error')
    frequency = sys.argv[1]
    rospy.logerr(f"Invalid frequency parameter: {frequency}")
    rospy.signal_shutdown('Invalid parameter')
