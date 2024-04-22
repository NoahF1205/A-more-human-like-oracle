;; Auto-generated. Do not edit!


(when (boundp 'mbot_catching::ExperimentData)
  (if (not (find-package "MBOT_CATCHING"))
    (make-package "MBOT_CATCHING"))
  (shadow 'ExperimentData (find-package "MBOT_CATCHING")))
(unless (find-package "MBOT_CATCHING::EXPERIMENTDATA")
  (make-package "MBOT_CATCHING::EXPERIMENTDATA"))

(in-package "ROS")
;;//! \htmlinclude ExperimentData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mbot_catching::ExperimentData
  :super ros::object
  :slots (_header _hf_value _delay ))

(defmethod mbot_catching::ExperimentData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:hf_value __hf_value) 0.0)
    ((:delay __delay) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _hf_value (float __hf_value))
   (setq _delay (string __delay))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:hf_value
   (&optional __hf_value)
   (if __hf_value (setq _hf_value __hf_value)) _hf_value)
  (:delay
   (&optional __delay)
   (if __delay (setq _delay __delay)) _delay)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _hf_value
    4
    ;; string _delay
    4 (length _delay)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _hf_value
       (sys::poke _hf_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _delay
       (write-long (length _delay) s) (princ _delay s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _hf_value
     (setq _hf_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _delay
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _delay (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mbot_catching::ExperimentData :md5sum-) "a6fb4514e738e5e86f2622b8905384c8")
(setf (get mbot_catching::ExperimentData :datatype-) "mbot_catching/ExperimentData")
(setf (get mbot_catching::ExperimentData :definition-)
      "std_msgs/Header header
float32 hf_value
string delay
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :mbot_catching/ExperimentData "a6fb4514e738e5e86f2622b8905384c8")


