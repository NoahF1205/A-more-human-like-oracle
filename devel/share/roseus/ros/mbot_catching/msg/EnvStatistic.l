;; Auto-generated. Do not edit!


(when (boundp 'mbot_catching::EnvStatistic)
  (if (not (find-package "MBOT_CATCHING"))
    (make-package "MBOT_CATCHING"))
  (shadow 'EnvStatistic (find-package "MBOT_CATCHING")))
(unless (find-package "MBOT_CATCHING::ENVSTATISTIC")
  (make-package "MBOT_CATCHING::ENVSTATISTIC"))

(in-package "ROS")
;;//! \htmlinclude EnvStatistic.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mbot_catching::EnvStatistic
  :super ros::object
  :slots (_header _action _reward ))

(defmethod mbot_catching::EnvStatistic
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:action __action) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:reward __reward) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _action __action)
   (setq _reward (float __reward))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:reward
   (&optional __reward)
   (if __reward (setq _reward __reward)) _reward)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[] _action
    (* 4    (length _action)) 4
    ;; float32 _reward
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[] _action
     (write-long (length _action) s)
     (dotimes (i (length _action))
       (sys::poke (elt _action i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _reward
       (sys::poke _reward (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[] _action
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _action (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _action i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _reward
     (setq _reward (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mbot_catching::EnvStatistic :md5sum-) "ae95a53e3cd6840f18df4e5cfcb7004c")
(setf (get mbot_catching::EnvStatistic :datatype-) "mbot_catching/EnvStatistic")
(setf (get mbot_catching::EnvStatistic :definition-)
      "std_msgs/Header header
float32[] action
float32 reward
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



(provide :mbot_catching/EnvStatistic "ae95a53e3cd6840f18df4e5cfcb7004c")


