
(cl:in-package :asdf)

(defsystem "mbot_catching-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "EnvStatistic" :depends-on ("_package_EnvStatistic"))
    (:file "_package_EnvStatistic" :depends-on ("_package"))
    (:file "ExperimentData" :depends-on ("_package_ExperimentData"))
    (:file "_package_ExperimentData" :depends-on ("_package"))
  ))