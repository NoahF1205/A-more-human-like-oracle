# Install script for directory: /home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/noahfang/Documents/Lab/A-more-human-like-oracle/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/msg/non_generated" TYPE FILE FILES
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/non_generated/ApiOptions.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/non_generated/KortexError.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/msg/generated" TYPE FILE FILES
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/ErrorCodes.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/SubErrorCodes.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/msg/generated/actuator_config" TYPE FILE FILES
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_config/ActuatorConfig_ControlMode.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_config/ActuatorConfig_ControlModeInformation.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_config/ActuatorConfig_SafetyLimitType.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_config/ActuatorConfig_ServiceVersion.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_config/AxisOffsets.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_config/AxisPosition.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_config/CoggingFeedforwardMode.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_config/CoggingFeedforwardModeInformation.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_config/CommandMode.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_config/CommandModeInformation.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_config/ControlLoop.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_config/ControlLoopParameters.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_config/ControlLoopSelection.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_config/CustomDataIndex.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_config/CustomDataSelection.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_config/EncoderDerivativeParameters.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_config/FrequencyResponse.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_config/LoopSelection.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_config/PositionCommand.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_config/RampResponse.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_config/SafetyIdentifierBankA.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_config/Servoing.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_config/StepResponse.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_config/TorqueCalibration.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_config/TorqueOffset.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_config/VectorDriveParameters.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/msg/generated/actuator_cyclic" TYPE FILE FILES
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_cyclic/ActuatorCyclic_Command.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_cyclic/ActuatorCyclic_CustomData.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_cyclic/ActuatorCyclic_Feedback.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_cyclic/ActuatorCyclic_MessageId.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_cyclic/ActuatorCyclic_ServiceVersion.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_cyclic/CommandFlags.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/actuator_cyclic/StatusFlags.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/msg/generated/base" TYPE FILE FILES
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Action.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ActionEvent.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ActionExecutionState.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ActionHandle.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ActionList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ActionNotification.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ActionNotificationList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ActionType.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Action_action_parameters.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ActivateMapHandle.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ActuatorInformation.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Admittance.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/AdmittanceMode.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/AdvancedSequenceHandle.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/AngularWaypoint.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/AppendActionInformation.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ArmStateInformation.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ArmStateNotification.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/BackupEvent.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Base_CapSenseConfig.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Base_CapSenseMode.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Base_ControlMode.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Base_ControlModeInformation.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Base_ControlModeNotification.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Base_GpioConfiguration.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Base_JointSpeeds.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Base_Position.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Base_RotationMatrix.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Base_RotationMatrixRow.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Base_SafetyIdentifier.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Base_ServiceVersion.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Base_Stop.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/BluetoothEnableState.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/BridgeConfig.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/BridgeIdentifier.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/BridgeList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/BridgePortConfig.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/BridgeResult.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/BridgeStatus.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/BridgeType.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/CartesianLimitation.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/CartesianLimitationList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/CartesianSpeed.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/CartesianTrajectoryConstraint.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/CartesianTrajectoryConstraint_type.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/CartesianWaypoint.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ChangeJointSpeeds.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ChangeTwist.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ChangeWrench.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/CommunicationInterfaceConfiguration.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ConfigurationChangeNotification.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ConfigurationChangeNotificationList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ConfigurationChangeNotification_configuration_change.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ConfigurationNotificationEvent.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ConstrainedJointAngle.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ConstrainedJointAngles.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ConstrainedOrientation.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ConstrainedPose.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ConstrainedPosition.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ControlModeNotificationList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ControllerBehavior.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ControllerConfiguration.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ControllerConfigurationList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ControllerConfigurationMode.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ControllerElementEventType.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ControllerElementHandle.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ControllerElementHandle_identifier.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ControllerElementState.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ControllerEvent.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ControllerEventType.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ControllerHandle.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ControllerInputType.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ControllerList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ControllerNotification.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ControllerNotificationList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ControllerNotification_state.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ControllerState.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ControllerType.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Delay.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/EmergencyStop.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/EventIdSequenceInfoNotification.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/FactoryEvent.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/FactoryNotification.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Faults.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Finger.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/FirmwareBundleVersions.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/FirmwareComponentVersion.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/FullIPv4Configuration.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/FullUserProfile.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Gen3GpioPinId.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/GpioAction.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/GpioBehavior.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/GpioCommand.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/GpioConfigurationList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/GpioEvent.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/GpioPinConfiguration.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/GpioPinPropertyFlags.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Gripper.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/GripperCommand.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/GripperMode.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/GripperRequest.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/IKData.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/IPv4Configuration.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/IPv4Information.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/JointAngle.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/JointAngles.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/JointLimitation.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/JointNavigationDirection.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/JointSpeed.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/JointTorque.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/JointTorques.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/JointTrajectoryConstraint.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/JointTrajectoryConstraintType.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/JointsLimitationsList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/KinematicTrajectoryConstraints.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/LedState.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/LimitationType.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Map.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/MapElement.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/MapEvent.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/MapEvent_events.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/MapGroup.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/MapGroupHandle.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/MapGroupList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/MapHandle.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/MapList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Mapping.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/MappingHandle.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/MappingInfoNotification.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/MappingInfoNotificationList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/MappingList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/NavigationDirection.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/NetworkEvent.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/NetworkHandle.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/NetworkNotification.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/NetworkNotificationList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/NetworkType.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/OperatingMode.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/OperatingModeInformation.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/OperatingModeNotification.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/OperatingModeNotificationList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Orientation.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/PasswordChange.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Point.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Pose.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/PreComputedJointTrajectory.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/PreComputedJointTrajectoryElement.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ProtectionZone.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ProtectionZoneEvent.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ProtectionZoneHandle.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ProtectionZoneInformation.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ProtectionZoneList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ProtectionZoneNotification.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ProtectionZoneNotificationList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Query.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/RFConfiguration.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/RequestedActionType.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/RobotEvent.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/RobotEventNotification.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/RobotEventNotificationList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/SafetyEvent.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/SafetyNotificationList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Sequence.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/SequenceHandle.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/SequenceInfoNotification.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/SequenceInfoNotificationList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/SequenceInformation.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/SequenceList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/SequenceTask.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/SequenceTaskConfiguration.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/SequenceTaskHandle.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/SequenceTasks.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/SequenceTasksConfiguration.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/SequenceTasksPair.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/SequenceTasksRange.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ServoingMode.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ServoingModeInformation.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ServoingModeNotification.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ServoingModeNotificationList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ShapeType.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/SignalQuality.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Snapshot.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/SnapshotType.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/SoundType.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Ssid.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/SwitchControlMapping.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/SystemTime.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Timeout.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/TrajectoryContinuityMode.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/TrajectoryErrorElement.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/TrajectoryErrorIdentifier.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/TrajectoryErrorReport.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/TrajectoryErrorType.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/TrajectoryInfo.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/TrajectoryInfoType.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/TransformationMatrix.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/TransformationRow.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Twist.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/TwistCommand.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/TwistLimitation.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/UserEvent.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/UserList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/UserNotification.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/UserNotificationList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/UserProfile.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/UserProfileList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Waypoint.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/WaypointList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/WaypointValidationReport.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Waypoint_type_of_waypoint.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/WifiConfiguration.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/WifiConfigurationList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/WifiEnableState.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/WifiEncryptionType.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/WifiInformation.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/WifiInformationList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/WifiSecurityType.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Wrench.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/WrenchCommand.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/WrenchLimitation.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/WrenchMode.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/WristDigitalInputIdentifier.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Xbox360AnalogInputIdentifier.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/Xbox360DigitalInputIdentifier.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base/ZoneShape.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/msg/generated/base_cyclic" TYPE FILE FILES
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base_cyclic/ActuatorCommand.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base_cyclic/ActuatorCustomData.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base_cyclic/ActuatorFeedback.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base_cyclic/BaseCyclic_Command.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base_cyclic/BaseCyclic_CustomData.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base_cyclic/BaseCyclic_Feedback.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base_cyclic/BaseCyclic_ServiceVersion.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/base_cyclic/BaseFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/msg/generated/common" TYPE FILE FILES
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/common/ArmState.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/common/CartesianReferenceFrame.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/common/Connection.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/common/CountryCode.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/common/CountryCodeIdentifier.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/common/DeviceHandle.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/common/DeviceTypes.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/common/Empty.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/common/NotificationHandle.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/common/NotificationOptions.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/common/NotificationType.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/common/Permission.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/common/SafetyHandle.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/common/SafetyNotification.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/common/SafetyStatusValue.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/common/Timestamp.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/common/UARTConfiguration.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/common/UARTDeviceIdentification.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/common/UARTParity.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/common/UARTSpeed.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/common/UARTStopBits.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/common/UARTWordLength.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/common/Unit.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/common/UserProfileHandle.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/msg/generated/control_config" TYPE FILE FILES
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/control_config/AngularTwist.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/control_config/CartesianReferenceFrameInfo.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/control_config/CartesianTransform.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/control_config/ControlConfig_ControlMode.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/control_config/ControlConfig_ControlModeInformation.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/control_config/ControlConfig_ControlModeNotification.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/control_config/ControlConfig_JointSpeeds.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/control_config/ControlConfig_Position.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/control_config/ControlConfig_ServiceVersion.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/control_config/ControlConfigurationEvent.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/control_config/ControlConfigurationNotification.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/control_config/DesiredSpeeds.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/control_config/GravityVector.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/control_config/JointAccelerationSoftLimits.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/control_config/JointSpeedSoftLimits.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/control_config/KinematicLimits.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/control_config/KinematicLimitsList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/control_config/LinearTwist.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/control_config/PayloadInformation.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/control_config/ToolConfiguration.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/control_config/TwistAngularSoftLimit.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/control_config/TwistLinearSoftLimit.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/msg/generated/device_config" TYPE FILE FILES
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/BootloaderVersion.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/Calibration.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/CalibrationElement.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/CalibrationItem.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/CalibrationParameter.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/CalibrationParameter_value.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/CalibrationResult.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/CalibrationStatus.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/CapSenseRegister.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/DeviceConfig_CapSenseConfig.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/DeviceConfig_CapSenseMode.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/DeviceConfig_SafetyLimitType.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/DeviceConfig_ServiceVersion.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/DeviceType.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/FirmwareVersion.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/IPv4Settings.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/MACAddress.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/ModelNumber.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/PartNumber.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/PartNumberRevision.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/PowerOnSelfTestResult.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/RebootRqst.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/RunMode.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/RunModes.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/SafetyConfiguration.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/SafetyConfigurationList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/SafetyEnable.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/SafetyInformation.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/SafetyInformationList.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/SafetyStatus.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/SafetyThreshold.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_config/SerialNumber.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/msg/generated/device_manager" TYPE FILE FILES
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_manager/DeviceHandles.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/device_manager/DeviceManager_ServiceVersion.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/msg/generated/gripper_config" TYPE FILE FILES
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/gripper_config/GripperConfig_SafetyIdentifier.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/gripper_config/RobotiqGripperStatusFlags.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/msg/generated/gripper_cyclic" TYPE FILE FILES
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/gripper_cyclic/CustomDataUnit.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/gripper_cyclic/GripperCyclic_Command.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/gripper_cyclic/GripperCyclic_CustomData.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/gripper_cyclic/GripperCyclic_Feedback.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/gripper_cyclic/GripperCyclic_MessageId.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/gripper_cyclic/GripperCyclic_ServiceVersion.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/gripper_cyclic/MotorCommand.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/gripper_cyclic/MotorFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/msg/generated/interconnect_config" TYPE FILE FILES
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_config/EthernetConfiguration.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_config/EthernetDevice.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_config/EthernetDeviceIdentification.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_config/EthernetDuplex.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_config/EthernetSpeed.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_config/GPIOIdentification.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_config/GPIOIdentifier.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_config/GPIOMode.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_config/GPIOPull.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_config/GPIOState.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_config/GPIOValue.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_config/I2CConfiguration.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_config/I2CData.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_config/I2CDevice.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_config/I2CDeviceAddressing.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_config/I2CDeviceIdentification.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_config/I2CMode.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_config/I2CReadParameter.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_config/I2CReadRegisterParameter.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_config/I2CRegisterAddressSize.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_config/I2CWriteParameter.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_config/I2CWriteRegisterParameter.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_config/InterconnectConfig_GPIOConfiguration.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_config/InterconnectConfig_SafetyIdentifier.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_config/InterconnectConfig_ServiceVersion.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_config/UARTPortId.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/msg/generated/interconnect_cyclic" TYPE FILE FILES
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_cyclic/InterconnectCyclic_Command.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_cyclic/InterconnectCyclic_Command_tool_command.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_cyclic/InterconnectCyclic_CustomData.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_cyclic/InterconnectCyclic_CustomData_tool_customData.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_cyclic/InterconnectCyclic_Feedback.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_cyclic/InterconnectCyclic_Feedback_tool_feedback.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_cyclic/InterconnectCyclic_MessageId.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/interconnect_cyclic/InterconnectCyclic_ServiceVersion.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/msg/generated/product_configuration" TYPE FILE FILES
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/product_configuration/ArmLaterality.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/product_configuration/BaseType.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/product_configuration/BrakeType.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/product_configuration/CompleteProductConfiguration.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/product_configuration/EndEffectorType.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/product_configuration/InterfaceModuleType.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/product_configuration/ModelId.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/product_configuration/ProductConfigurationEndEffectorType.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/product_configuration/VisionModuleType.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/product_configuration/WristType.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/msg/generated/vision_config" TYPE FILE FILES
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/vision_config/BitRate.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/vision_config/DistortionCoefficients.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/vision_config/ExtrinsicParameters.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/vision_config/FocusAction.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/vision_config/FocusPoint.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/vision_config/FrameRate.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/vision_config/IntrinsicParameters.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/vision_config/IntrinsicProfileIdentifier.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/vision_config/ManualFocus.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/vision_config/Option.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/vision_config/OptionIdentifier.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/vision_config/OptionInformation.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/vision_config/OptionValue.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/vision_config/Resolution.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/vision_config/Sensor.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/vision_config/SensorFocusAction.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/vision_config/SensorFocusAction_action_parameters.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/vision_config/SensorIdentifier.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/vision_config/SensorSettings.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/vision_config/TranslationVector.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/vision_config/VisionConfig_RotationMatrix.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/vision_config/VisionConfig_RotationMatrixRow.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/vision_config/VisionConfig_ServiceVersion.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/vision_config/VisionEvent.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/msg/generated/vision_config/VisionNotification.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/srv/non_generated" TYPE FILE FILES
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/non_generated/SetApiOptions.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/non_generated/SetDeviceID.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/srv/generated/actuator_config" TYPE FILE FILES
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/actuator_config/ActuatorConfig_ClearFaults.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/actuator_config/ActuatorConfig_GetControlMode.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/actuator_config/GetActivatedControlLoop.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/actuator_config/GetAxisOffsets.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/actuator_config/GetCoggingFeedforwardMode.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/actuator_config/GetCommandMode.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/actuator_config/GetControlLoopParameters.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/actuator_config/GetSelectedCustomData.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/actuator_config/GetServoing.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/actuator_config/GetTorqueOffset.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/actuator_config/MoveToPosition.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/actuator_config/SelectCustomData.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/actuator_config/SetActivatedControlLoop.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/actuator_config/SetAxisOffsets.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/actuator_config/SetCoggingFeedforwardMode.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/actuator_config/SetCommandMode.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/actuator_config/SetControlLoopParameters.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/actuator_config/SetControlMode.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/actuator_config/SetServoing.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/actuator_config/SetTorqueOffset.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/srv/generated/base" TYPE FILE FILES
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/ActivateMap.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/AddSequenceTasks.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/AddWifiConfiguration.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/ApplyEmergencyStop.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/Base_ClearFaults.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/Base_GetCapSenseConfig.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/Base_GetControlMode.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/Base_OnNotificationControlModeTopic.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/Base_SetCapSenseConfig.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/Base_Unsubscribe.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/ChangePassword.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/ComputeForwardKinematics.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/ComputeInverseKinematics.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/ConnectWifi.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/CreateAction.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/CreateMap.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/CreateMapping.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/CreateProtectionZone.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/CreateSequence.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/CreateUserProfile.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/DeleteAction.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/DeleteAllSequenceTasks.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/DeleteMap.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/DeleteMapping.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/DeleteProtectionZone.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/DeleteSequence.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/DeleteSequenceTask.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/DeleteUserProfile.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/DeleteWifiConfiguration.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/DisableBridge.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/DisconnectWifi.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/DuplicateMap.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/DuplicateMapping.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/EnableBridge.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/ExecuteAction.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/ExecuteActionFromReference.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/ExecuteWaypointTrajectory.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetActuatorCount.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetAllConfiguredWifis.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetAllConnectedControllers.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetAllControllerConfigurations.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetAllJointsSpeedHardLimitation.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetAllJointsSpeedSoftLimitation.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetAllJointsTorqueHardLimitation.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetAllJointsTorqueSoftLimitation.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetArmState.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetAvailableWifi.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetBluetoothEnableState.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetBridgeConfig.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetBridgeList.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetConfiguredWifi.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetConnectedWifiInformation.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetControllerConfiguration.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetControllerConfigurationMode.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetControllerState.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetFirmwareBundleVersions.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetIPv4Configuration.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetIPv4Information.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetMeasuredCartesianPose.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetMeasuredGripperMovement.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetMeasuredJointAngles.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetOperatingMode.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetProductConfiguration.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetServoingMode.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetTrajectoryErrorReport.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetTwistHardLimitation.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetTwistSoftLimitation.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetWifiCountryCode.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetWifiEnableState.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetWifiInformation.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetWrenchHardLimitation.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/GetWrenchSoftLimitation.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/IsCommunicationInterfaceEnable.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/MoveSequenceTask.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/OnNotificationActionTopic.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/OnNotificationArmStateTopic.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/OnNotificationConfigurationChangeTopic.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/OnNotificationControllerTopic.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/OnNotificationFactoryTopic.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/OnNotificationMappingInfoTopic.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/OnNotificationNetworkTopic.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/OnNotificationOperatingModeTopic.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/OnNotificationProtectionZoneTopic.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/OnNotificationRobotEventTopic.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/OnNotificationSequenceInfoTopic.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/OnNotificationServoingModeTopic.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/OnNotificationUserTopic.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/PauseAction.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/PauseSequence.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/PlayAdvancedSequence.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/PlayCartesianTrajectory.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/PlayCartesianTrajectoryOrientation.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/PlayCartesianTrajectoryPosition.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/PlayJointTrajectory.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/PlayPreComputedJointTrajectory.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/PlaySelectedJointTrajectory.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/PlaySequence.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/ReadAction.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/ReadAllActions.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/ReadAllMappings.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/ReadAllMaps.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/ReadAllProtectionZones.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/ReadAllSequenceTasks.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/ReadAllSequences.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/ReadAllUserProfiles.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/ReadAllUsers.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/ReadMap.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/ReadMapping.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/ReadProtectionZone.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/ReadSequence.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/ReadSequenceTask.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/ReadUserProfile.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/RestoreFactoryProductConfiguration.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/RestoreFactorySettings.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/ResumeAction.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/ResumeSequence.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/SendGripperCommand.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/SendJointSpeedsCommand.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/SendJointSpeedsJoystickCommand.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/SendSelectedJointSpeedCommand.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/SendSelectedJointSpeedJoystickCommand.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/SendTwistCommand.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/SendTwistJoystickCommand.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/SendWrenchCommand.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/SendWrenchJoystickCommand.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/SetAdmittance.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/SetBluetoothEnableState.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/SetCommunicationInterfaceEnable.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/SetControllerConfiguration.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/SetControllerConfigurationMode.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/SetIPv4Configuration.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/SetOperatingMode.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/SetServoingMode.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/SetWifiCountryCode.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/SetWifiEnableState.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/StartTeaching.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/StartWifiScan.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/Stop.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/StopAction.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/StopSequence.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/StopTeaching.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/SwapSequenceTasks.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/TakeSnapshot.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/UpdateAction.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/UpdateEndEffectorTypeConfiguration.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/UpdateMap.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/UpdateMapping.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/UpdateProtectionZone.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/UpdateSequence.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/UpdateSequenceTask.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/UpdateUserProfile.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/base/ValidateWaypointList.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/srv/generated/control_config" TYPE FILE FILES
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/ControlConfig_GetControlMode.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/ControlConfig_OnNotificationControlModeTopic.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/ControlConfig_Unsubscribe.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/GetAllKinematicSoftLimits.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/GetCartesianReferenceFrame.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/GetDesiredSpeeds.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/GetGravityVector.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/GetKinematicHardLimits.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/GetKinematicSoftLimits.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/GetPayloadInformation.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/GetToolConfiguration.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/OnNotificationControlConfigurationTopic.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/ResetGravityVector.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/ResetJointAccelerationSoftLimits.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/ResetJointSpeedSoftLimits.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/ResetPayloadInformation.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/ResetToolConfiguration.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/ResetTwistAngularSoftLimit.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/ResetTwistLinearSoftLimit.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/SetCartesianReferenceFrame.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/SetDesiredAngularTwist.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/SetDesiredJointSpeeds.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/SetDesiredLinearTwist.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/SetGravityVector.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/SetJointAccelerationSoftLimits.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/SetJointSpeedSoftLimits.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/SetPayloadInformation.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/SetToolConfiguration.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/SetTwistAngularSoftLimit.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/control_config/SetTwistLinearSoftLimit.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/srv/generated/device_config" TYPE FILE FILES
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/ClearAllSafetyStatus.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/ClearSafetyStatus.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/DeviceConfig_GetCapSenseConfig.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/DeviceConfig_SetCapSenseConfig.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/ExecuteCalibration.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/GetAllSafetyConfiguration.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/GetAllSafetyInformation.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/GetBootloaderVersion.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/GetCalibrationResult.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/GetDeviceType.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/GetFirmwareVersion.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/GetIPv4Settings.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/GetMACAddress.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/GetModelNumber.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/GetPartNumber.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/GetPartNumberRevision.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/GetRunMode.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/GetSafetyConfiguration.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/GetSafetyEnable.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/GetSafetyInformation.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/GetSafetyStatus.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/GetSerialNumber.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/OnNotificationSafetyTopic.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/RebootRequest.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/ResetSafetyDefaults.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/SetIPv4Settings.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/SetRunMode.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/SetSafetyConfiguration.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/SetSafetyEnable.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/SetSafetyErrorThreshold.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/SetSafetyWarningThreshold.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_config/StopCalibration.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/srv/generated/device_manager" TYPE FILE FILES "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/device_manager/ReadAllDevices.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/srv/generated/interconnect_config" TYPE FILE FILES
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/interconnect_config/GetEthernetConfiguration.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/interconnect_config/GetGPIOConfiguration.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/interconnect_config/GetGPIOState.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/interconnect_config/GetI2CConfiguration.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/interconnect_config/GetUARTConfiguration.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/interconnect_config/I2CRead.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/interconnect_config/I2CReadRegister.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/interconnect_config/I2CWrite.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/interconnect_config/I2CWriteRegister.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/interconnect_config/SetEthernetConfiguration.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/interconnect_config/SetGPIOConfiguration.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/interconnect_config/SetGPIOState.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/interconnect_config/SetI2CConfiguration.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/interconnect_config/SetUARTConfiguration.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/srv/generated/vision_config" TYPE FILE FILES
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/vision_config/DoSensorFocusAction.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/vision_config/GetExtrinsicParameters.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/vision_config/GetIntrinsicParameters.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/vision_config/GetIntrinsicParametersProfile.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/vision_config/GetOptionInformation.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/vision_config/GetOptionValue.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/vision_config/GetSensorSettings.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/vision_config/OnNotificationVisionTopic.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/vision_config/SetExtrinsicParameters.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/vision_config/SetIntrinsicParameters.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/vision_config/SetOptionValue.srv"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/srv/generated/vision_config/SetSensorSettings.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/action/non_generated" TYPE FILE FILES "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/action/non_generated/FollowCartesianTrajectory.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/msg" TYPE FILE FILES
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/devel/share/kortex_driver/msg/FollowCartesianTrajectoryAction.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/devel/share/kortex_driver/msg/FollowCartesianTrajectoryActionGoal.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/devel/share/kortex_driver/msg/FollowCartesianTrajectoryActionResult.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/devel/share/kortex_driver/msg/FollowCartesianTrajectoryActionFeedback.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/devel/share/kortex_driver/msg/FollowCartesianTrajectoryGoal.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/devel/share/kortex_driver/msg/FollowCartesianTrajectoryResult.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/devel/share/kortex_driver/msg/FollowCartesianTrajectoryFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/cmake" TYPE FILE FILES "/home/noahfang/Documents/Lab/A-more-human-like-oracle/build/ros_kortex/kortex_driver/catkin_generated/installspace/kortex_driver-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/noahfang/Documents/Lab/A-more-human-like-oracle/devel/include/kortex_driver")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/noahfang/Documents/Lab/A-more-human-like-oracle/devel/share/roseus/ros/kortex_driver")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/noahfang/Documents/Lab/A-more-human-like-oracle/devel/share/common-lisp/ros/kortex_driver")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/noahfang/Documents/Lab/A-more-human-like-oracle/devel/share/gennodejs/ros/kortex_driver")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/noahfang/Documents/Lab/A-more-human-like-oracle/devel/lib/python3/dist-packages/kortex_driver")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/noahfang/Documents/Lab/A-more-human-like-oracle/devel/lib/python3/dist-packages/kortex_driver")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/noahfang/Documents/Lab/A-more-human-like-oracle/build/ros_kortex/kortex_driver/catkin_generated/installspace/kortex_driver.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/cmake" TYPE FILE FILES "/home/noahfang/Documents/Lab/A-more-human-like-oracle/build/ros_kortex/kortex_driver/catkin_generated/installspace/kortex_driver-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver/cmake" TYPE FILE FILES
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/build/ros_kortex/kortex_driver/catkin_generated/installspace/kortex_driverConfig.cmake"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/build/ros_kortex/kortex_driver/catkin_generated/installspace/kortex_driverConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kortex_driver" TYPE FILE FILES "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/ros_kortex/kortex_driver/package.xml")
endif()

