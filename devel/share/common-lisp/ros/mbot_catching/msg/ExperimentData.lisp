; Auto-generated. Do not edit!


(cl:in-package mbot_catching-msg)


;//! \htmlinclude ExperimentData.msg.html

(cl:defclass <ExperimentData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (hf_value
    :reader hf_value
    :initarg :hf_value
    :type cl:float
    :initform 0.0)
   (delay
    :reader delay
    :initarg :delay
    :type cl:string
    :initform ""))
)

(cl:defclass ExperimentData (<ExperimentData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExperimentData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExperimentData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mbot_catching-msg:<ExperimentData> is deprecated: use mbot_catching-msg:ExperimentData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ExperimentData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mbot_catching-msg:header-val is deprecated.  Use mbot_catching-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'hf_value-val :lambda-list '(m))
(cl:defmethod hf_value-val ((m <ExperimentData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mbot_catching-msg:hf_value-val is deprecated.  Use mbot_catching-msg:hf_value instead.")
  (hf_value m))

(cl:ensure-generic-function 'delay-val :lambda-list '(m))
(cl:defmethod delay-val ((m <ExperimentData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mbot_catching-msg:delay-val is deprecated.  Use mbot_catching-msg:delay instead.")
  (delay m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExperimentData>) ostream)
  "Serializes a message object of type '<ExperimentData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'hf_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'delay))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'delay))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExperimentData>) istream)
  "Deserializes a message object of type '<ExperimentData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hf_value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'delay) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'delay) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExperimentData>)))
  "Returns string type for a message object of type '<ExperimentData>"
  "mbot_catching/ExperimentData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExperimentData)))
  "Returns string type for a message object of type 'ExperimentData"
  "mbot_catching/ExperimentData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExperimentData>)))
  "Returns md5sum for a message object of type '<ExperimentData>"
  "a6fb4514e738e5e86f2622b8905384c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExperimentData)))
  "Returns md5sum for a message object of type 'ExperimentData"
  "a6fb4514e738e5e86f2622b8905384c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExperimentData>)))
  "Returns full string definition for message of type '<ExperimentData>"
  (cl:format cl:nil "std_msgs/Header header~%float32 hf_value~%string delay~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExperimentData)))
  "Returns full string definition for message of type 'ExperimentData"
  (cl:format cl:nil "std_msgs/Header header~%float32 hf_value~%string delay~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExperimentData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:length (cl:slot-value msg 'delay))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExperimentData>))
  "Converts a ROS message object to a list"
  (cl:list 'ExperimentData
    (cl:cons ':header (header msg))
    (cl:cons ':hf_value (hf_value msg))
    (cl:cons ':delay (delay msg))
))
