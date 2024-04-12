// Generated by gencpp from file kortex_driver/GetPartNumberResponse.msg
// DO NOT EDIT!


#ifndef KORTEX_DRIVER_MESSAGE_GETPARTNUMBERRESPONSE_H
#define KORTEX_DRIVER_MESSAGE_GETPARTNUMBERRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <kortex_driver/PartNumber.h>

namespace kortex_driver
{
template <class ContainerAllocator>
struct GetPartNumberResponse_
{
  typedef GetPartNumberResponse_<ContainerAllocator> Type;

  GetPartNumberResponse_()
    : output()  {
    }
  GetPartNumberResponse_(const ContainerAllocator& _alloc)
    : output(_alloc)  {
  (void)_alloc;
    }



   typedef  ::kortex_driver::PartNumber_<ContainerAllocator>  _output_type;
  _output_type output;





  typedef boost::shared_ptr< ::kortex_driver::GetPartNumberResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kortex_driver::GetPartNumberResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetPartNumberResponse_

typedef ::kortex_driver::GetPartNumberResponse_<std::allocator<void> > GetPartNumberResponse;

typedef boost::shared_ptr< ::kortex_driver::GetPartNumberResponse > GetPartNumberResponsePtr;
typedef boost::shared_ptr< ::kortex_driver::GetPartNumberResponse const> GetPartNumberResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kortex_driver::GetPartNumberResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kortex_driver::GetPartNumberResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kortex_driver::GetPartNumberResponse_<ContainerAllocator1> & lhs, const ::kortex_driver::GetPartNumberResponse_<ContainerAllocator2> & rhs)
{
  return lhs.output == rhs.output;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kortex_driver::GetPartNumberResponse_<ContainerAllocator1> & lhs, const ::kortex_driver::GetPartNumberResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kortex_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::GetPartNumberResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kortex_driver::GetPartNumberResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::GetPartNumberResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kortex_driver::GetPartNumberResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::GetPartNumberResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kortex_driver::GetPartNumberResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kortex_driver::GetPartNumberResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "095d854e305b4b3ba44bcdf367692278";
  }

  static const char* value(const ::kortex_driver::GetPartNumberResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x095d854e305b4b3bULL;
  static const uint64_t static_value2 = 0xa44bcdf367692278ULL;
};

template<class ContainerAllocator>
struct DataType< ::kortex_driver::GetPartNumberResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kortex_driver/GetPartNumberResponse";
  }

  static const char* value(const ::kortex_driver::GetPartNumberResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kortex_driver::GetPartNumberResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "PartNumber output\n"
"\n"
"================================================================================\n"
"MSG: kortex_driver/PartNumber\n"
"\n"
"string part_number\n"
;
  }

  static const char* value(const ::kortex_driver::GetPartNumberResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kortex_driver::GetPartNumberResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.output);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetPartNumberResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kortex_driver::GetPartNumberResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kortex_driver::GetPartNumberResponse_<ContainerAllocator>& v)
  {
    s << indent << "output: ";
    s << std::endl;
    Printer< ::kortex_driver::PartNumber_<ContainerAllocator> >::stream(s, indent + "  ", v.output);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KORTEX_DRIVER_MESSAGE_GETPARTNUMBERRESPONSE_H
