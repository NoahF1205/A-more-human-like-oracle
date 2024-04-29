import rospy
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
import numpy as np
from gazebo_msgs.srv import SetModelState
from gazebo_msgs.msg import ModelState
from gazebo_msgs.srv import GetModelState
import tf

#http://wiki.ros.org/simulator_gazebo/Tutorials/Gazebo_ROS_API#Set_and_Get_Model_Pose_and_Twist_in_Simulation_via_Service
class MbotSim:
    def __init__(self, model_name='mbot', min_r=0.2, max_r=0.6):
        # rospy.init_node('mbot_sim_controller', anonymous=True)

        self.model_name = model_name
        self.min_r = min_r
        self.max_r = max_r
        self.velocity_publisher = rospy.Publisher(f'{self.model_name}/cmd_vel', Twist, queue_size=10)

        rospy.wait_for_service('/gazebo/get_model_state')
        self.get_state_service = rospy.ServiceProxy('/gazebo/get_model_state', GetModelState)
        # Define direction to angle mapping (angles in radians)
        self.directions = {
            0: (1, 0),       # Forward
            1: (-1, 0),      # Backward
            2: (1, np.pi),       # Forward Left (obvious left bias)
            3: (1, -np.pi),      # Forward Right (obvious right bias)
            4: (-1, np.pi),      # Backward Left (obvious left bias)
            5: (-1, -np.pi),     # Backward Right (obvious right bias)
            6: (1, np.pi * 2),       # Faster left
            7: (1, -np.pi * 2)       # Faster right
        }
        self.max_speed = 0.1

    def set_model_state(self, position, orientation):
        rospy.wait_for_service('/gazebo/set_model_state')
        try:
            set_state = rospy.ServiceProxy('/gazebo/set_model_state', SetModelState)
            state_msg = ModelState()
            state_msg.model_name = self.model_name
            state_msg.pose.position.x = position[0]
            state_msg.pose.position.y = position[1]
            state_msg.pose.position.z = position[2]
            state_msg.pose.orientation.x = orientation[0]
            state_msg.pose.orientation.y = orientation[1]
            state_msg.pose.orientation.z = orientation[2]
            state_msg.pose.orientation.w = orientation[3]
            state_msg.reference_frame = 'world'  

            resp = set_state(state_msg)
            return resp.success
        except rospy.ServiceException as e:
            print("Service call failed: %s" % e)

    def get_model_state(self, reference_frame='world'):
        try:
            resp = self.get_state_service(self.model_name, reference_frame)
            return resp
        except rospy.ServiceException as e:
            print("Service call failed: %s" % e)
    
    # relative to the origin postion of the mbot
    def get_model_state_odom(self):
        state= rospy.wait_for_message(f'{self.model_name}/odom', Odometry, timeout=None)  
        return state
    
    def reset(self):
        # random position 
        radius = np.random.uniform(self.min_r, self.max_r)
        # angle = np.random.uniform(0, 2 * np.pi)
        angle = np.random.uniform(0, np.pi)
        initial_position = [radius * np.cos(angle), radius * np.sin(angle), 0]  
        initial_orientation = [0, 0, 0, 1]  
        result = self.set_model_state(initial_position, initial_orientation)
        if result:
            rospy.loginfo("Mbot successfully initialized.")
        else:
            rospy.logerr("Mbot initialization failed.")

    def move_mbot(self, direction, speed, duration):
        if direction not in self.directions:
            rospy.logerr("Invalid direction input")
            return False

        # Get the corresponding linear and angular speeds for the direction
        linear_speed, angular_speed = self.directions[direction]
        vel_msg = Twist()
        vel_msg.linear.x = linear_speed * speed
        vel_msg.angular.z = angular_speed * speed

        # Get current position and direction
        current_state = self.get_model_state()

        current_x = current_state.pose.position.x
        current_y = current_state.pose.position.y
        current_yaw = 2 * np.arctan2(current_state.pose.orientation.z, current_state.pose.orientation.w)

        # Calculate the position after movement
        dx = linear_speed * speed * duration * np.cos(current_yaw)
        dy = linear_speed * speed * duration * np.sin(current_yaw)
        new_x = current_x + dx
        new_y = current_y + dy

        # Check if the new position is within the safe bounds
        if not self.is_within_bounds(new_x, new_y):
            # rospy.logerr("Calculated position is out of safe bounds.")
            return False

        # Publish velocity messages to control robot's movement
        rate = rospy.Rate(10)
        end_time = rospy.Time.now() + rospy.Duration(duration)
        while rospy.Time.now() < end_time:
            self.velocity_publisher.publish(vel_msg)
            rate.sleep()

        # Stop the robot
        vel_msg.linear.x = 0
        vel_msg.angular.z = 0
        self.velocity_publisher.publish(vel_msg)
        return True
    
    def random_move(self):
        rospy.loginfo("called random move!")
        done = False
        while not done:
            direction = np.random.randint(0, 7)
            speed = np.random.uniform(0,self.max_speed)
            duration = 1
            done = self.move_mbot(direction, 
                                  speed,
                                  duration)
        

    def is_within_bounds(self, x, y):
        """Check if the position is within the safe bounds"""
        radius = np.sqrt(x**2 + y**2)
        return self.min_r <= radius <= self.max_r