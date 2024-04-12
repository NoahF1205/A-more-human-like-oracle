// Generated by gencpp from file kortex_driver/Sensor.msg
// DO NOT EDIT!


#ifndef KORTEX_DRIVER_MESSAGE_SENSOR_H
#define KORTEX_DRIVER_MESSAGE_SENSOR_H


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
struct Sensor_
{
  typedef Sensor_<ContainerAllocator> Type;

  Sensor_()
    {
    }
  Sensor_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }





// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(SENSOR_UNSPECIFIED)
  #undef SENSOR_UNSPECIFIED
#endif
#if defined(_WIN32) && defined(SENSOR_COLOR)
  #undef SENSOR_COLOR
#endif
#if defined(_WIN32) && defined(SENSOR_DEPTH)
  #undef SENSOR_DEPTH
#endif

  enum {
    SENSOR_UNSPECIFIED = 0u,
    SENSOR_COLOR = 1u,
    SENSOR_DEPTH = 2u,
  };


  typedef boost::shared_ptr< ::kortex_driver::Sensor_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kortex_driver::Sensor_<ContainerAllocator> const> ConstPtr;

}; // struct Sensor_

typedef ::kortex_driver::Sensor_<std::allocator<void> > Sensor;

typedef boost::shared_ptr< ::kortex_driver::Sensor > SensorPtr;
typedef boost::shared_ptr< ::kortex_driver::Sensor const> SensorConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kortex_driver::Sensor_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kortex_driver::Sensor_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace kortex_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::Sensor_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::Sensor_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::Sensor_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::Sensor_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::Sensor_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::Sensor_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kortex_driver::Sensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4dd10d615f1a44376aea67ca8eb604d0";
  }

  static const char* value(const ::kortex_driver::Sensor_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4dd10d615f1a4437ULL;
  static const uint64_t static_value2 = 0x6aea67ca8eb604d0ULL;
};

template<class ContainerAllocator>
struct DataType< ::kortex_driver::Sensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kortex_driver/Sensor";
  }

  static const char* value(const ::kortex_driver::Sensor_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kortex_driver::Sensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"uint32 SENSOR_UNSPECIFIED = 0\n"
"\n"
"uint32 SENSOR_COLOR = 1\n"
"\n"
"uint32 SENSOR_DEPTH = 2\n"
;
  }

  static const char* value(const ::kortex_driver::Sensor_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kortex_driver::Sensor_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Sensor_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kortex_driver::Sensor_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::kortex_driver::Sensor_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // KORTEX_DRIVER_MESSAGE_SENSOR_H
