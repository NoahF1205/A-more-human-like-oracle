// Generated by gencpp from file kortex_driver/OnNotificationSafetyTopic.msg
// DO NOT EDIT!


#ifndef KORTEX_DRIVER_MESSAGE_ONNOTIFICATIONSAFETYTOPIC_H
#define KORTEX_DRIVER_MESSAGE_ONNOTIFICATIONSAFETYTOPIC_H

#include <ros/service_traits.h>


#include <kortex_driver/OnNotificationSafetyTopicRequest.h>
#include <kortex_driver/OnNotificationSafetyTopicResponse.h>


namespace kortex_driver
{

struct OnNotificationSafetyTopic
{

typedef OnNotificationSafetyTopicRequest Request;
typedef OnNotificationSafetyTopicResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct OnNotificationSafetyTopic
} // namespace kortex_driver


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::kortex_driver::OnNotificationSafetyTopic > {
  static const char* value()
  {
    return "6fefdd07c6cb63a94f7b48e7e07e815b";
  }

  static const char* value(const ::kortex_driver::OnNotificationSafetyTopic&) { return value(); }
};

template<>
struct DataType< ::kortex_driver::OnNotificationSafetyTopic > {
  static const char* value()
  {
    return "kortex_driver/OnNotificationSafetyTopic";
  }

  static const char* value(const ::kortex_driver::OnNotificationSafetyTopic&) { return value(); }
};


// service_traits::MD5Sum< ::kortex_driver::OnNotificationSafetyTopicRequest> should match
// service_traits::MD5Sum< ::kortex_driver::OnNotificationSafetyTopic >
template<>
struct MD5Sum< ::kortex_driver::OnNotificationSafetyTopicRequest>
{
  static const char* value()
  {
    return MD5Sum< ::kortex_driver::OnNotificationSafetyTopic >::value();
  }
  static const char* value(const ::kortex_driver::OnNotificationSafetyTopicRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::kortex_driver::OnNotificationSafetyTopicRequest> should match
// service_traits::DataType< ::kortex_driver::OnNotificationSafetyTopic >
template<>
struct DataType< ::kortex_driver::OnNotificationSafetyTopicRequest>
{
  static const char* value()
  {
    return DataType< ::kortex_driver::OnNotificationSafetyTopic >::value();
  }
  static const char* value(const ::kortex_driver::OnNotificationSafetyTopicRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::kortex_driver::OnNotificationSafetyTopicResponse> should match
// service_traits::MD5Sum< ::kortex_driver::OnNotificationSafetyTopic >
template<>
struct MD5Sum< ::kortex_driver::OnNotificationSafetyTopicResponse>
{
  static const char* value()
  {
    return MD5Sum< ::kortex_driver::OnNotificationSafetyTopic >::value();
  }
  static const char* value(const ::kortex_driver::OnNotificationSafetyTopicResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::kortex_driver::OnNotificationSafetyTopicResponse> should match
// service_traits::DataType< ::kortex_driver::OnNotificationSafetyTopic >
template<>
struct DataType< ::kortex_driver::OnNotificationSafetyTopicResponse>
{
  static const char* value()
  {
    return DataType< ::kortex_driver::OnNotificationSafetyTopic >::value();
  }
  static const char* value(const ::kortex_driver::OnNotificationSafetyTopicResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // KORTEX_DRIVER_MESSAGE_ONNOTIFICATIONSAFETYTOPIC_H
