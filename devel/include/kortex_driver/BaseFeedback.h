// Generated by gencpp from file kortex_driver/BaseFeedback.msg
// DO NOT EDIT!


#ifndef KORTEX_DRIVER_MESSAGE_BASEFEEDBACK_H
#define KORTEX_DRIVER_MESSAGE_BASEFEEDBACK_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace kortex_driver
{
template <class ContainerAllocator>
struct BaseFeedback_
{
  typedef BaseFeedback_<ContainerAllocator> Type;

  BaseFeedback_()
    : active_state_connection_identifier(0)
    , active_state(0)
    , arm_voltage(0.0)
    , arm_current(0.0)
    , temperature_cpu(0.0)
    , temperature_ambient(0.0)
    , imu_acceleration_x(0.0)
    , imu_acceleration_y(0.0)
    , imu_acceleration_z(0.0)
    , imu_angular_velocity_x(0.0)
    , imu_angular_velocity_y(0.0)
    , imu_angular_velocity_z(0.0)
    , tool_pose_x(0.0)
    , tool_pose_y(0.0)
    , tool_pose_z(0.0)
    , tool_pose_theta_x(0.0)
    , tool_pose_theta_y(0.0)
    , tool_pose_theta_z(0.0)
    , tool_twist_linear_x(0.0)
    , tool_twist_linear_y(0.0)
    , tool_twist_linear_z(0.0)
    , tool_twist_angular_x(0.0)
    , tool_twist_angular_y(0.0)
    , tool_twist_angular_z(0.0)
    , tool_external_wrench_force_x(0.0)
    , tool_external_wrench_force_y(0.0)
    , tool_external_wrench_force_z(0.0)
    , tool_external_wrench_torque_x(0.0)
    , tool_external_wrench_torque_y(0.0)
    , tool_external_wrench_torque_z(0.0)
    , fault_bank_a(0)
    , fault_bank_b(0)
    , warning_bank_a(0)
    , warning_bank_b(0)
    , commanded_tool_pose_x(0.0)
    , commanded_tool_pose_y(0.0)
    , commanded_tool_pose_z(0.0)
    , commanded_tool_pose_theta_x(0.0)
    , commanded_tool_pose_theta_y(0.0)
    , commanded_tool_pose_theta_z(0.0)  {
    }
  BaseFeedback_(const ContainerAllocator& _alloc)
    : active_state_connection_identifier(0)
    , active_state(0)
    , arm_voltage(0.0)
    , arm_current(0.0)
    , temperature_cpu(0.0)
    , temperature_ambient(0.0)
    , imu_acceleration_x(0.0)
    , imu_acceleration_y(0.0)
    , imu_acceleration_z(0.0)
    , imu_angular_velocity_x(0.0)
    , imu_angular_velocity_y(0.0)
    , imu_angular_velocity_z(0.0)
    , tool_pose_x(0.0)
    , tool_pose_y(0.0)
    , tool_pose_z(0.0)
    , tool_pose_theta_x(0.0)
    , tool_pose_theta_y(0.0)
    , tool_pose_theta_z(0.0)
    , tool_twist_linear_x(0.0)
    , tool_twist_linear_y(0.0)
    , tool_twist_linear_z(0.0)
    , tool_twist_angular_x(0.0)
    , tool_twist_angular_y(0.0)
    , tool_twist_angular_z(0.0)
    , tool_external_wrench_force_x(0.0)
    , tool_external_wrench_force_y(0.0)
    , tool_external_wrench_force_z(0.0)
    , tool_external_wrench_torque_x(0.0)
    , tool_external_wrench_torque_y(0.0)
    , tool_external_wrench_torque_z(0.0)
    , fault_bank_a(0)
    , fault_bank_b(0)
    , warning_bank_a(0)
    , warning_bank_b(0)
    , commanded_tool_pose_x(0.0)
    , commanded_tool_pose_y(0.0)
    , commanded_tool_pose_z(0.0)
    , commanded_tool_pose_theta_x(0.0)
    , commanded_tool_pose_theta_y(0.0)
    , commanded_tool_pose_theta_z(0.0)  {
  (void)_alloc;
    }



   typedef uint32_t _active_state_connection_identifier_type;
  _active_state_connection_identifier_type active_state_connection_identifier;

   typedef uint32_t _active_state_type;
  _active_state_type active_state;

   typedef float _arm_voltage_type;
  _arm_voltage_type arm_voltage;

   typedef float _arm_current_type;
  _arm_current_type arm_current;

   typedef float _temperature_cpu_type;
  _temperature_cpu_type temperature_cpu;

   typedef float _temperature_ambient_type;
  _temperature_ambient_type temperature_ambient;

   typedef float _imu_acceleration_x_type;
  _imu_acceleration_x_type imu_acceleration_x;

   typedef float _imu_acceleration_y_type;
  _imu_acceleration_y_type imu_acceleration_y;

   typedef float _imu_acceleration_z_type;
  _imu_acceleration_z_type imu_acceleration_z;

   typedef float _imu_angular_velocity_x_type;
  _imu_angular_velocity_x_type imu_angular_velocity_x;

   typedef float _imu_angular_velocity_y_type;
  _imu_angular_velocity_y_type imu_angular_velocity_y;

   typedef float _imu_angular_velocity_z_type;
  _imu_angular_velocity_z_type imu_angular_velocity_z;

   typedef float _tool_pose_x_type;
  _tool_pose_x_type tool_pose_x;

   typedef float _tool_pose_y_type;
  _tool_pose_y_type tool_pose_y;

   typedef float _tool_pose_z_type;
  _tool_pose_z_type tool_pose_z;

   typedef float _tool_pose_theta_x_type;
  _tool_pose_theta_x_type tool_pose_theta_x;

   typedef float _tool_pose_theta_y_type;
  _tool_pose_theta_y_type tool_pose_theta_y;

   typedef float _tool_pose_theta_z_type;
  _tool_pose_theta_z_type tool_pose_theta_z;

   typedef float _tool_twist_linear_x_type;
  _tool_twist_linear_x_type tool_twist_linear_x;

   typedef float _tool_twist_linear_y_type;
  _tool_twist_linear_y_type tool_twist_linear_y;

   typedef float _tool_twist_linear_z_type;
  _tool_twist_linear_z_type tool_twist_linear_z;

   typedef float _tool_twist_angular_x_type;
  _tool_twist_angular_x_type tool_twist_angular_x;

   typedef float _tool_twist_angular_y_type;
  _tool_twist_angular_y_type tool_twist_angular_y;

   typedef float _tool_twist_angular_z_type;
  _tool_twist_angular_z_type tool_twist_angular_z;

   typedef float _tool_external_wrench_force_x_type;
  _tool_external_wrench_force_x_type tool_external_wrench_force_x;

   typedef float _tool_external_wrench_force_y_type;
  _tool_external_wrench_force_y_type tool_external_wrench_force_y;

   typedef float _tool_external_wrench_force_z_type;
  _tool_external_wrench_force_z_type tool_external_wrench_force_z;

   typedef float _tool_external_wrench_torque_x_type;
  _tool_external_wrench_torque_x_type tool_external_wrench_torque_x;

   typedef float _tool_external_wrench_torque_y_type;
  _tool_external_wrench_torque_y_type tool_external_wrench_torque_y;

   typedef float _tool_external_wrench_torque_z_type;
  _tool_external_wrench_torque_z_type tool_external_wrench_torque_z;

   typedef uint32_t _fault_bank_a_type;
  _fault_bank_a_type fault_bank_a;

   typedef uint32_t _fault_bank_b_type;
  _fault_bank_b_type fault_bank_b;

   typedef uint32_t _warning_bank_a_type;
  _warning_bank_a_type warning_bank_a;

   typedef uint32_t _warning_bank_b_type;
  _warning_bank_b_type warning_bank_b;

   typedef float _commanded_tool_pose_x_type;
  _commanded_tool_pose_x_type commanded_tool_pose_x;

   typedef float _commanded_tool_pose_y_type;
  _commanded_tool_pose_y_type commanded_tool_pose_y;

   typedef float _commanded_tool_pose_z_type;
  _commanded_tool_pose_z_type commanded_tool_pose_z;

   typedef float _commanded_tool_pose_theta_x_type;
  _commanded_tool_pose_theta_x_type commanded_tool_pose_theta_x;

   typedef float _commanded_tool_pose_theta_y_type;
  _commanded_tool_pose_theta_y_type commanded_tool_pose_theta_y;

   typedef float _commanded_tool_pose_theta_z_type;
  _commanded_tool_pose_theta_z_type commanded_tool_pose_theta_z;





  typedef boost::shared_ptr< ::kortex_driver::BaseFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kortex_driver::BaseFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct BaseFeedback_

typedef ::kortex_driver::BaseFeedback_<std::allocator<void> > BaseFeedback;

typedef boost::shared_ptr< ::kortex_driver::BaseFeedback > BaseFeedbackPtr;
typedef boost::shared_ptr< ::kortex_driver::BaseFeedback const> BaseFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kortex_driver::BaseFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kortex_driver::BaseFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kortex_driver::BaseFeedback_<ContainerAllocator1> & lhs, const ::kortex_driver::BaseFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.active_state_connection_identifier == rhs.active_state_connection_identifier &&
    lhs.active_state == rhs.active_state &&
    lhs.arm_voltage == rhs.arm_voltage &&
    lhs.arm_current == rhs.arm_current &&
    lhs.temperature_cpu == rhs.temperature_cpu &&
    lhs.temperature_ambient == rhs.temperature_ambient &&
    lhs.imu_acceleration_x == rhs.imu_acceleration_x &&
    lhs.imu_acceleration_y == rhs.imu_acceleration_y &&
    lhs.imu_acceleration_z == rhs.imu_acceleration_z &&
    lhs.imu_angular_velocity_x == rhs.imu_angular_velocity_x &&
    lhs.imu_angular_velocity_y == rhs.imu_angular_velocity_y &&
    lhs.imu_angular_velocity_z == rhs.imu_angular_velocity_z &&
    lhs.tool_pose_x == rhs.tool_pose_x &&
    lhs.tool_pose_y == rhs.tool_pose_y &&
    lhs.tool_pose_z == rhs.tool_pose_z &&
    lhs.tool_pose_theta_x == rhs.tool_pose_theta_x &&
    lhs.tool_pose_theta_y == rhs.tool_pose_theta_y &&
    lhs.tool_pose_theta_z == rhs.tool_pose_theta_z &&
    lhs.tool_twist_linear_x == rhs.tool_twist_linear_x &&
    lhs.tool_twist_linear_y == rhs.tool_twist_linear_y &&
    lhs.tool_twist_linear_z == rhs.tool_twist_linear_z &&
    lhs.tool_twist_angular_x == rhs.tool_twist_angular_x &&
    lhs.tool_twist_angular_y == rhs.tool_twist_angular_y &&
    lhs.tool_twist_angular_z == rhs.tool_twist_angular_z &&
    lhs.tool_external_wrench_force_x == rhs.tool_external_wrench_force_x &&
    lhs.tool_external_wrench_force_y == rhs.tool_external_wrench_force_y &&
    lhs.tool_external_wrench_force_z == rhs.tool_external_wrench_force_z &&
    lhs.tool_external_wrench_torque_x == rhs.tool_external_wrench_torque_x &&
    lhs.tool_external_wrench_torque_y == rhs.tool_external_wrench_torque_y &&
    lhs.tool_external_wrench_torque_z == rhs.tool_external_wrench_torque_z &&
    lhs.fault_bank_a == rhs.fault_bank_a &&
    lhs.fault_bank_b == rhs.fault_bank_b &&
    lhs.warning_bank_a == rhs.warning_bank_a &&
    lhs.warning_bank_b == rhs.warning_bank_b &&
    lhs.commanded_tool_pose_x == rhs.commanded_tool_pose_x &&
    lhs.commanded_tool_pose_y == rhs.commanded_tool_pose_y &&
    lhs.commanded_tool_pose_z == rhs.commanded_tool_pose_z &&
    lhs.commanded_tool_pose_theta_x == rhs.commanded_tool_pose_theta_x &&
    lhs.commanded_tool_pose_theta_y == rhs.commanded_tool_pose_theta_y &&
    lhs.commanded_tool_pose_theta_z == rhs.commanded_tool_pose_theta_z;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kortex_driver::BaseFeedback_<ContainerAllocator1> & lhs, const ::kortex_driver::BaseFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kortex_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::BaseFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::BaseFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::BaseFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::BaseFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::BaseFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::BaseFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kortex_driver::BaseFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "10860d64294ad841b25c45c5195aa64d";
  }

  static const char* value(const ::kortex_driver::BaseFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x10860d64294ad841ULL;
  static const uint64_t static_value2 = 0xb25c45c5195aa64dULL;
};

template<class ContainerAllocator>
struct DataType< ::kortex_driver::BaseFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kortex_driver/BaseFeedback";
  }

  static const char* value(const ::kortex_driver::BaseFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kortex_driver::BaseFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"uint32 active_state_connection_identifier\n"
"uint32 active_state\n"
"float32 arm_voltage\n"
"float32 arm_current\n"
"float32 temperature_cpu\n"
"float32 temperature_ambient\n"
"float32 imu_acceleration_x\n"
"float32 imu_acceleration_y\n"
"float32 imu_acceleration_z\n"
"float32 imu_angular_velocity_x\n"
"float32 imu_angular_velocity_y\n"
"float32 imu_angular_velocity_z\n"
"float32 tool_pose_x\n"
"float32 tool_pose_y\n"
"float32 tool_pose_z\n"
"float32 tool_pose_theta_x\n"
"float32 tool_pose_theta_y\n"
"float32 tool_pose_theta_z\n"
"float32 tool_twist_linear_x\n"
"float32 tool_twist_linear_y\n"
"float32 tool_twist_linear_z\n"
"float32 tool_twist_angular_x\n"
"float32 tool_twist_angular_y\n"
"float32 tool_twist_angular_z\n"
"float32 tool_external_wrench_force_x\n"
"float32 tool_external_wrench_force_y\n"
"float32 tool_external_wrench_force_z\n"
"float32 tool_external_wrench_torque_x\n"
"float32 tool_external_wrench_torque_y\n"
"float32 tool_external_wrench_torque_z\n"
"uint32 fault_bank_a\n"
"uint32 fault_bank_b\n"
"uint32 warning_bank_a\n"
"uint32 warning_bank_b\n"
"float32 commanded_tool_pose_x\n"
"float32 commanded_tool_pose_y\n"
"float32 commanded_tool_pose_z\n"
"float32 commanded_tool_pose_theta_x\n"
"float32 commanded_tool_pose_theta_y\n"
"float32 commanded_tool_pose_theta_z\n"
;
  }

  static const char* value(const ::kortex_driver::BaseFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kortex_driver::BaseFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.active_state_connection_identifier);
      stream.next(m.active_state);
      stream.next(m.arm_voltage);
      stream.next(m.arm_current);
      stream.next(m.temperature_cpu);
      stream.next(m.temperature_ambient);
      stream.next(m.imu_acceleration_x);
      stream.next(m.imu_acceleration_y);
      stream.next(m.imu_acceleration_z);
      stream.next(m.imu_angular_velocity_x);
      stream.next(m.imu_angular_velocity_y);
      stream.next(m.imu_angular_velocity_z);
      stream.next(m.tool_pose_x);
      stream.next(m.tool_pose_y);
      stream.next(m.tool_pose_z);
      stream.next(m.tool_pose_theta_x);
      stream.next(m.tool_pose_theta_y);
      stream.next(m.tool_pose_theta_z);
      stream.next(m.tool_twist_linear_x);
      stream.next(m.tool_twist_linear_y);
      stream.next(m.tool_twist_linear_z);
      stream.next(m.tool_twist_angular_x);
      stream.next(m.tool_twist_angular_y);
      stream.next(m.tool_twist_angular_z);
      stream.next(m.tool_external_wrench_force_x);
      stream.next(m.tool_external_wrench_force_y);
      stream.next(m.tool_external_wrench_force_z);
      stream.next(m.tool_external_wrench_torque_x);
      stream.next(m.tool_external_wrench_torque_y);
      stream.next(m.tool_external_wrench_torque_z);
      stream.next(m.fault_bank_a);
      stream.next(m.fault_bank_b);
      stream.next(m.warning_bank_a);
      stream.next(m.warning_bank_b);
      stream.next(m.commanded_tool_pose_x);
      stream.next(m.commanded_tool_pose_y);
      stream.next(m.commanded_tool_pose_z);
      stream.next(m.commanded_tool_pose_theta_x);
      stream.next(m.commanded_tool_pose_theta_y);
      stream.next(m.commanded_tool_pose_theta_z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BaseFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kortex_driver::BaseFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kortex_driver::BaseFeedback_<ContainerAllocator>& v)
  {
    s << indent << "active_state_connection_identifier: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.active_state_connection_identifier);
    s << indent << "active_state: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.active_state);
    s << indent << "arm_voltage: ";
    Printer<float>::stream(s, indent + "  ", v.arm_voltage);
    s << indent << "arm_current: ";
    Printer<float>::stream(s, indent + "  ", v.arm_current);
    s << indent << "temperature_cpu: ";
    Printer<float>::stream(s, indent + "  ", v.temperature_cpu);
    s << indent << "temperature_ambient: ";
    Printer<float>::stream(s, indent + "  ", v.temperature_ambient);
    s << indent << "imu_acceleration_x: ";
    Printer<float>::stream(s, indent + "  ", v.imu_acceleration_x);
    s << indent << "imu_acceleration_y: ";
    Printer<float>::stream(s, indent + "  ", v.imu_acceleration_y);
    s << indent << "imu_acceleration_z: ";
    Printer<float>::stream(s, indent + "  ", v.imu_acceleration_z);
    s << indent << "imu_angular_velocity_x: ";
    Printer<float>::stream(s, indent + "  ", v.imu_angular_velocity_x);
    s << indent << "imu_angular_velocity_y: ";
    Printer<float>::stream(s, indent + "  ", v.imu_angular_velocity_y);
    s << indent << "imu_angular_velocity_z: ";
    Printer<float>::stream(s, indent + "  ", v.imu_angular_velocity_z);
    s << indent << "tool_pose_x: ";
    Printer<float>::stream(s, indent + "  ", v.tool_pose_x);
    s << indent << "tool_pose_y: ";
    Printer<float>::stream(s, indent + "  ", v.tool_pose_y);
    s << indent << "tool_pose_z: ";
    Printer<float>::stream(s, indent + "  ", v.tool_pose_z);
    s << indent << "tool_pose_theta_x: ";
    Printer<float>::stream(s, indent + "  ", v.tool_pose_theta_x);
    s << indent << "tool_pose_theta_y: ";
    Printer<float>::stream(s, indent + "  ", v.tool_pose_theta_y);
    s << indent << "tool_pose_theta_z: ";
    Printer<float>::stream(s, indent + "  ", v.tool_pose_theta_z);
    s << indent << "tool_twist_linear_x: ";
    Printer<float>::stream(s, indent + "  ", v.tool_twist_linear_x);
    s << indent << "tool_twist_linear_y: ";
    Printer<float>::stream(s, indent + "  ", v.tool_twist_linear_y);
    s << indent << "tool_twist_linear_z: ";
    Printer<float>::stream(s, indent + "  ", v.tool_twist_linear_z);
    s << indent << "tool_twist_angular_x: ";
    Printer<float>::stream(s, indent + "  ", v.tool_twist_angular_x);
    s << indent << "tool_twist_angular_y: ";
    Printer<float>::stream(s, indent + "  ", v.tool_twist_angular_y);
    s << indent << "tool_twist_angular_z: ";
    Printer<float>::stream(s, indent + "  ", v.tool_twist_angular_z);
    s << indent << "tool_external_wrench_force_x: ";
    Printer<float>::stream(s, indent + "  ", v.tool_external_wrench_force_x);
    s << indent << "tool_external_wrench_force_y: ";
    Printer<float>::stream(s, indent + "  ", v.tool_external_wrench_force_y);
    s << indent << "tool_external_wrench_force_z: ";
    Printer<float>::stream(s, indent + "  ", v.tool_external_wrench_force_z);
    s << indent << "tool_external_wrench_torque_x: ";
    Printer<float>::stream(s, indent + "  ", v.tool_external_wrench_torque_x);
    s << indent << "tool_external_wrench_torque_y: ";
    Printer<float>::stream(s, indent + "  ", v.tool_external_wrench_torque_y);
    s << indent << "tool_external_wrench_torque_z: ";
    Printer<float>::stream(s, indent + "  ", v.tool_external_wrench_torque_z);
    s << indent << "fault_bank_a: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.fault_bank_a);
    s << indent << "fault_bank_b: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.fault_bank_b);
    s << indent << "warning_bank_a: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.warning_bank_a);
    s << indent << "warning_bank_b: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.warning_bank_b);
    s << indent << "commanded_tool_pose_x: ";
    Printer<float>::stream(s, indent + "  ", v.commanded_tool_pose_x);
    s << indent << "commanded_tool_pose_y: ";
    Printer<float>::stream(s, indent + "  ", v.commanded_tool_pose_y);
    s << indent << "commanded_tool_pose_z: ";
    Printer<float>::stream(s, indent + "  ", v.commanded_tool_pose_z);
    s << indent << "commanded_tool_pose_theta_x: ";
    Printer<float>::stream(s, indent + "  ", v.commanded_tool_pose_theta_x);
    s << indent << "commanded_tool_pose_theta_y: ";
    Printer<float>::stream(s, indent + "  ", v.commanded_tool_pose_theta_y);
    s << indent << "commanded_tool_pose_theta_z: ";
    Printer<float>::stream(s, indent + "  ", v.commanded_tool_pose_theta_z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KORTEX_DRIVER_MESSAGE_BASEFEEDBACK_H
