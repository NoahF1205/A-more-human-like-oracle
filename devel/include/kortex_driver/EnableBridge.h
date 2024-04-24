// Generated by gencpp from file kortex_driver/EnableBridge.msg
// DO NOT EDIT!


#ifndef KORTEX_DRIVER_MESSAGE_ENABLEBRIDGE_H
#define KORTEX_DRIVER_MESSAGE_ENABLEBRIDGE_H

#include <ros/service_traits.h>


#include <kortex_driver/EnableBridgeRequest.h>
#include <kortex_driver/EnableBridgeResponse.h>


namespace kortex_driver
{

struct EnableBridge
{

typedef EnableBridgeRequest Request;
typedef EnableBridgeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct EnableBridge
} // namespace kortex_driver


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::kortex_driver::EnableBridge > {
  static const char* value()
  {
    return "be9e21afaa7e92c6bf00b8eed13a695e";
  }

  static const char* value(const ::kortex_driver::EnableBridge&) { return value(); }
};

template<>
struct DataType< ::kortex_driver::EnableBridge > {
  static const char* value()
  {
    return "kortex_driver/EnableBridge";
  }

  static const char* value(const ::kortex_driver::EnableBridge&) { return value(); }
};


// service_traits::MD5Sum< ::kortex_driver::EnableBridgeRequest> should match
// service_traits::MD5Sum< ::kortex_driver::EnableBridge >
template<>
struct MD5Sum< ::kortex_driver::EnableBridgeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::kortex_driver::EnableBridge >::value();
  }
  static const char* value(const ::kortex_driver::EnableBridgeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::kortex_driver::EnableBridgeRequest> should match
// service_traits::DataType< ::kortex_driver::EnableBridge >
template<>
struct DataType< ::kortex_driver::EnableBridgeRequest>
{
  static const char* value()
  {
    return DataType< ::kortex_driver::EnableBridge >::value();
  }
  static const char* value(const ::kortex_driver::EnableBridgeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::kortex_driver::EnableBridgeResponse> should match
// service_traits::MD5Sum< ::kortex_driver::EnableBridge >
template<>
struct MD5Sum< ::kortex_driver::EnableBridgeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::kortex_driver::EnableBridge >::value();
  }
  static const char* value(const ::kortex_driver::EnableBridgeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::kortex_driver::EnableBridgeResponse> should match
// service_traits::DataType< ::kortex_driver::EnableBridge >
template<>
struct DataType< ::kortex_driver::EnableBridgeResponse>
{
  static const char* value()
  {
    return DataType< ::kortex_driver::EnableBridge >::value();
  }
  static const char* value(const ::kortex_driver::EnableBridgeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // KORTEX_DRIVER_MESSAGE_ENABLEBRIDGE_H