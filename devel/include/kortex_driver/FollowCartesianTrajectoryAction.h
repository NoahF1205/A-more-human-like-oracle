// Generated by gencpp from file kortex_driver/FollowCartesianTrajectoryAction.msg
// DO NOT EDIT!


#ifndef KORTEX_DRIVER_MESSAGE_FOLLOWCARTESIANTRAJECTORYACTION_H
#define KORTEX_DRIVER_MESSAGE_FOLLOWCARTESIANTRAJECTORYACTION_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <kortex_driver/FollowCartesianTrajectoryActionGoal.h>
#include <kortex_driver/FollowCartesianTrajectoryActionResult.h>
#include <kortex_driver/FollowCartesianTrajectoryActionFeedback.h>

namespace kortex_driver
{
template <class ContainerAllocator>
struct FollowCartesianTrajectoryAction_
{
  typedef FollowCartesianTrajectoryAction_<ContainerAllocator> Type;

  FollowCartesianTrajectoryAction_()
    : action_goal()
    , action_result()
    , action_feedback()  {
    }
  FollowCartesianTrajectoryAction_(const ContainerAllocator& _alloc)
    : action_goal(_alloc)
    , action_result(_alloc)
    , action_feedback(_alloc)  {
  (void)_alloc;
    }



   typedef  ::kortex_driver::FollowCartesianTrajectoryActionGoal_<ContainerAllocator>  _action_goal_type;
  _action_goal_type action_goal;

   typedef  ::kortex_driver::FollowCartesianTrajectoryActionResult_<ContainerAllocator>  _action_result_type;
  _action_result_type action_result;

   typedef  ::kortex_driver::FollowCartesianTrajectoryActionFeedback_<ContainerAllocator>  _action_feedback_type;
  _action_feedback_type action_feedback;





  typedef boost::shared_ptr< ::kortex_driver::FollowCartesianTrajectoryAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kortex_driver::FollowCartesianTrajectoryAction_<ContainerAllocator> const> ConstPtr;

}; // struct FollowCartesianTrajectoryAction_

typedef ::kortex_driver::FollowCartesianTrajectoryAction_<std::allocator<void> > FollowCartesianTrajectoryAction;

typedef boost::shared_ptr< ::kortex_driver::FollowCartesianTrajectoryAction > FollowCartesianTrajectoryActionPtr;
typedef boost::shared_ptr< ::kortex_driver::FollowCartesianTrajectoryAction const> FollowCartesianTrajectoryActionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kortex_driver::FollowCartesianTrajectoryAction_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kortex_driver::FollowCartesianTrajectoryAction_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kortex_driver::FollowCartesianTrajectoryAction_<ContainerAllocator1> & lhs, const ::kortex_driver::FollowCartesianTrajectoryAction_<ContainerAllocator2> & rhs)
{
  return lhs.action_goal == rhs.action_goal &&
    lhs.action_result == rhs.action_result &&
    lhs.action_feedback == rhs.action_feedback;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kortex_driver::FollowCartesianTrajectoryAction_<ContainerAllocator1> & lhs, const ::kortex_driver::FollowCartesianTrajectoryAction_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kortex_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::FollowCartesianTrajectoryAction_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::FollowCartesianTrajectoryAction_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::FollowCartesianTrajectoryAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::FollowCartesianTrajectoryAction_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::FollowCartesianTrajectoryAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::FollowCartesianTrajectoryAction_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kortex_driver::FollowCartesianTrajectoryAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "17784e9223be85aa2945a9a850863951";
  }

  static const char* value(const ::kortex_driver::FollowCartesianTrajectoryAction_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x17784e9223be85aaULL;
  static const uint64_t static_value2 = 0x2945a9a850863951ULL;
};

template<class ContainerAllocator>
struct DataType< ::kortex_driver::FollowCartesianTrajectoryAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kortex_driver/FollowCartesianTrajectoryAction";
  }

  static const char* value(const ::kortex_driver::FollowCartesianTrajectoryAction_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kortex_driver::FollowCartesianTrajectoryAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"FollowCartesianTrajectoryActionGoal action_goal\n"
"FollowCartesianTrajectoryActionResult action_result\n"
"FollowCartesianTrajectoryActionFeedback action_feedback\n"
"\n"
"================================================================================\n"
"MSG: kortex_driver/FollowCartesianTrajectoryActionGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"FollowCartesianTrajectoryGoal goal\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: kortex_driver/FollowCartesianTrajectoryGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#The trajectory to follow\n"
"CartesianWaypoint[] trajectory\n"
"duration goal_time_tolerance\n"
"bool use_optimal_blending\n"
"\n"
"================================================================================\n"
"MSG: kortex_driver/CartesianWaypoint\n"
"\n"
"Pose pose\n"
"uint32 reference_frame\n"
"float32 maximum_linear_velocity\n"
"float32 maximum_angular_velocity\n"
"float32 blending_radius\n"
"================================================================================\n"
"MSG: kortex_driver/Pose\n"
"\n"
"float32 x\n"
"float32 y\n"
"float32 z\n"
"float32 theta_x\n"
"float32 theta_y\n"
"float32 theta_z\n"
"================================================================================\n"
"MSG: kortex_driver/FollowCartesianTrajectoryActionResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"FollowCartesianTrajectoryResult result\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalStatus\n"
"GoalID goal_id\n"
"uint8 status\n"
"uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n"
"uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n"
"uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n"
"                            #   and has since completed its execution (Terminal State)\n"
"uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n"
"uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n"
"                            #    to some failure (Terminal State)\n"
"uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n"
"                            #    because the goal was unattainable or invalid (Terminal State)\n"
"uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n"
"                            #    and has not yet completed execution\n"
"uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n"
"                            #    but the action server has not yet confirmed that the goal is canceled\n"
"uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n"
"                            #    and was successfully cancelled (Terminal State)\n"
"uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n"
"                            #    sent over the wire by an action server\n"
"\n"
"#Allow for the user to associate a string with GoalStatus for debugging\n"
"string text\n"
"\n"
"\n"
"================================================================================\n"
"MSG: kortex_driver/FollowCartesianTrajectoryResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#result definition\n"
"string error_string\n"
"int32 error_code\n"
"int32 SUCCESSFUL = 0\n"
"int32 INVALID_GOAL = -1\n"
"int32 PATH_TOLERANCE_VIOLATED = -2\n"
"\n"
"\n"
"================================================================================\n"
"MSG: kortex_driver/FollowCartesianTrajectoryActionFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"FollowCartesianTrajectoryFeedback feedback\n"
"\n"
"================================================================================\n"
"MSG: kortex_driver/FollowCartesianTrajectoryFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#feedback\n"
"CartesianWaypoint actual\n"
;
  }

  static const char* value(const ::kortex_driver::FollowCartesianTrajectoryAction_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kortex_driver::FollowCartesianTrajectoryAction_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action_goal);
      stream.next(m.action_result);
      stream.next(m.action_feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FollowCartesianTrajectoryAction_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kortex_driver::FollowCartesianTrajectoryAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kortex_driver::FollowCartesianTrajectoryAction_<ContainerAllocator>& v)
  {
    s << indent << "action_goal: ";
    s << std::endl;
    Printer< ::kortex_driver::FollowCartesianTrajectoryActionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.action_goal);
    s << indent << "action_result: ";
    s << std::endl;
    Printer< ::kortex_driver::FollowCartesianTrajectoryActionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.action_result);
    s << indent << "action_feedback: ";
    s << std::endl;
    Printer< ::kortex_driver::FollowCartesianTrajectoryActionFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.action_feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KORTEX_DRIVER_MESSAGE_FOLLOWCARTESIANTRAJECTORYACTION_H
