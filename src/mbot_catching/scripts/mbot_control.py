import rospy
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
import numpy as np
from gazebo_msgs.srv import SetModelState
from gazebo_msgs.msg import ModelState
from gazebo_msgs.srv import GetModelState

#http://wiki.ros.org/simulator_gazebo/Tutorials/Gazebo_ROS_API#Set_and_Get_Model_Pose_and_Twist_in_Simulation_via_Service
class MbotSim:
    def __init__(self):
        rospy.init_node('mbot_sim_controller', anonymous=True)
        self.velocity_publisher = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
        self.odometry_subscriber = rospy.Subscriber('/odom', Odometry, self.odometry_callback)
        self.current_odometry = None
        self.model_name = 'mbot'
    def odometry_callback(self, data):
        self.current_odometry = data

    def get_odometry_state(self):
        # 确保我们已经接收到最新的里程计信息
        while self.current_odometry is None and not rospy.is_shutdown():
            rospy.sleep(0.1)
        return self.current_odometry
    
    def set_model_state(slef, model_name, position, orientation):
        rospy.wait_for_service('/gazebo/set_model_state')
        try:
            set_state = rospy.ServiceProxy('/gazebo/set_model_state', SetModelState)
            state_msg = ModelState()
            state_msg.model_name = model_name
            state_msg.pose.position.x = position[0]
            state_msg.pose.position.y = position[1]
            state_msg.pose.position.z = position[2]
            state_msg.pose.orientation.x = orientation[0]
            state_msg.pose.orientation.y = orientation[1]
            state_msg.pose.orientation.z = orientation[2]
            state_msg.pose.orientation.w = orientation[3]
            state_msg.reference_frame = 'world'  # 或者使用其他的参考坐标系

            resp = set_state(state_msg)
            return resp.success
        except rospy.ServiceException as e:
            print("Service call failed: %s" % e)

    def get_model_state(model_name, relative_entity_name='world'):
        rospy.wait_for_service('/gazebo/get_model_state')
        try:
            get_state = rospy.ServiceProxy('/gazebo/get_model_state', GetModelState)
            resp = get_state(model_name, relative_entity_name)
            return resp
        except rospy.ServiceException as e:
            print("Service call failed: %s" % e)

    def reset(self):
        initial_position = [0, 0, 0.1]  # 你希望小车回到的x, y, z坐标
        initial_orientation = [0, 0, 0, 1]  # 无旋转的四元数
        result = self.set_model_state('your_model_name', initial_position, initial_orientation)
        if result:
            print("Model state successfully reset.")
        else:
            print("Failed to reset model state.")

    def step(self, linear_velocity, angular_velocity):
        # 发送速度命令到差速小车
        twist = Twist()
        twist.linear.x = linear_velocity
        twist.angular.z = angular_velocity
        self.velocity_publisher.publish(twist)
        
        # 在这里你可能想等待一小段时间让小车移动
        rospy.sleep(1)
        
        # 获取小车的当前状态
        odometry = self.get_odometry_state()
        
        return odometry
