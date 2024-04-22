# Install script for directory: /home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching

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
    set(CMAKE_INSTALL_CONFIG_NAME "")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mbot_catching/msg" TYPE FILE FILES
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching/msg/ExperimentData.msg"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching/msg/EnvStatistic.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mbot_catching/cmake" TYPE FILE FILES "/home/noahfang/Documents/Lab/A-more-human-like-oracle/build/mbot_catching/catkin_generated/installspace/mbot_catching-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/noahfang/Documents/Lab/A-more-human-like-oracle/devel/include/mbot_catching")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/noahfang/Documents/Lab/A-more-human-like-oracle/devel/share/roseus/ros/mbot_catching")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/noahfang/Documents/Lab/A-more-human-like-oracle/devel/share/common-lisp/ros/mbot_catching")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/noahfang/Documents/Lab/A-more-human-like-oracle/devel/share/gennodejs/ros/mbot_catching")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/noahfang/Documents/Lab/A-more-human-like-oracle/devel/lib/python3/dist-packages/mbot_catching")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/noahfang/Documents/Lab/A-more-human-like-oracle/devel/lib/python3/dist-packages/mbot_catching")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/noahfang/Documents/Lab/A-more-human-like-oracle/build/mbot_catching/catkin_generated/installspace/mbot_catching.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mbot_catching/cmake" TYPE FILE FILES "/home/noahfang/Documents/Lab/A-more-human-like-oracle/build/mbot_catching/catkin_generated/installspace/mbot_catching-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mbot_catching/cmake" TYPE FILE FILES
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/build/mbot_catching/catkin_generated/installspace/mbot_catchingConfig.cmake"
    "/home/noahfang/Documents/Lab/A-more-human-like-oracle/build/mbot_catching/catkin_generated/installspace/mbot_catchingConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mbot_catching" TYPE FILE FILES "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mbot_catching" TYPE PROGRAM FILES "/home/noahfang/Documents/Lab/A-more-human-like-oracle/build/mbot_catching/catkin_generated/installspace/arm_control.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mbot_catching" TYPE PROGRAM FILES "/home/noahfang/Documents/Lab/A-more-human-like-oracle/build/mbot_catching/catkin_generated/installspace/exit_with_error.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mbot_catching" TYPE PROGRAM FILES "/home/noahfang/Documents/Lab/A-more-human-like-oracle/build/mbot_catching/catkin_generated/installspace/recorder_node.py")
endif()

