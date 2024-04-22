# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mbot_catching: 2 messages, 0 services")

set(MSG_I_FLAGS "-Imbot_catching:/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mbot_catching_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching/msg/ExperimentData.msg" NAME_WE)
add_custom_target(_mbot_catching_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mbot_catching" "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching/msg/ExperimentData.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching/msg/EnvStatistic.msg" NAME_WE)
add_custom_target(_mbot_catching_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mbot_catching" "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching/msg/EnvStatistic.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mbot_catching
  "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching/msg/ExperimentData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mbot_catching
)
_generate_msg_cpp(mbot_catching
  "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching/msg/EnvStatistic.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mbot_catching
)

### Generating Services

### Generating Module File
_generate_module_cpp(mbot_catching
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mbot_catching
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mbot_catching_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mbot_catching_generate_messages mbot_catching_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching/msg/ExperimentData.msg" NAME_WE)
add_dependencies(mbot_catching_generate_messages_cpp _mbot_catching_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching/msg/EnvStatistic.msg" NAME_WE)
add_dependencies(mbot_catching_generate_messages_cpp _mbot_catching_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mbot_catching_gencpp)
add_dependencies(mbot_catching_gencpp mbot_catching_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mbot_catching_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mbot_catching
  "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching/msg/ExperimentData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mbot_catching
)
_generate_msg_eus(mbot_catching
  "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching/msg/EnvStatistic.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mbot_catching
)

### Generating Services

### Generating Module File
_generate_module_eus(mbot_catching
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mbot_catching
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mbot_catching_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mbot_catching_generate_messages mbot_catching_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching/msg/ExperimentData.msg" NAME_WE)
add_dependencies(mbot_catching_generate_messages_eus _mbot_catching_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching/msg/EnvStatistic.msg" NAME_WE)
add_dependencies(mbot_catching_generate_messages_eus _mbot_catching_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mbot_catching_geneus)
add_dependencies(mbot_catching_geneus mbot_catching_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mbot_catching_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mbot_catching
  "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching/msg/ExperimentData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mbot_catching
)
_generate_msg_lisp(mbot_catching
  "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching/msg/EnvStatistic.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mbot_catching
)

### Generating Services

### Generating Module File
_generate_module_lisp(mbot_catching
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mbot_catching
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mbot_catching_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mbot_catching_generate_messages mbot_catching_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching/msg/ExperimentData.msg" NAME_WE)
add_dependencies(mbot_catching_generate_messages_lisp _mbot_catching_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching/msg/EnvStatistic.msg" NAME_WE)
add_dependencies(mbot_catching_generate_messages_lisp _mbot_catching_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mbot_catching_genlisp)
add_dependencies(mbot_catching_genlisp mbot_catching_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mbot_catching_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mbot_catching
  "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching/msg/ExperimentData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mbot_catching
)
_generate_msg_nodejs(mbot_catching
  "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching/msg/EnvStatistic.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mbot_catching
)

### Generating Services

### Generating Module File
_generate_module_nodejs(mbot_catching
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mbot_catching
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mbot_catching_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mbot_catching_generate_messages mbot_catching_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching/msg/ExperimentData.msg" NAME_WE)
add_dependencies(mbot_catching_generate_messages_nodejs _mbot_catching_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching/msg/EnvStatistic.msg" NAME_WE)
add_dependencies(mbot_catching_generate_messages_nodejs _mbot_catching_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mbot_catching_gennodejs)
add_dependencies(mbot_catching_gennodejs mbot_catching_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mbot_catching_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mbot_catching
  "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching/msg/ExperimentData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mbot_catching
)
_generate_msg_py(mbot_catching
  "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching/msg/EnvStatistic.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mbot_catching
)

### Generating Services

### Generating Module File
_generate_module_py(mbot_catching
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mbot_catching
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mbot_catching_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mbot_catching_generate_messages mbot_catching_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching/msg/ExperimentData.msg" NAME_WE)
add_dependencies(mbot_catching_generate_messages_py _mbot_catching_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/noahfang/Documents/Lab/A-more-human-like-oracle/src/mbot_catching/msg/EnvStatistic.msg" NAME_WE)
add_dependencies(mbot_catching_generate_messages_py _mbot_catching_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mbot_catching_genpy)
add_dependencies(mbot_catching_genpy mbot_catching_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mbot_catching_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mbot_catching)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mbot_catching
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mbot_catching_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mbot_catching)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mbot_catching
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mbot_catching_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mbot_catching)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mbot_catching
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mbot_catching_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mbot_catching)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mbot_catching
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mbot_catching_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mbot_catching)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mbot_catching\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mbot_catching
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mbot_catching_generate_messages_py std_msgs_generate_messages_py)
endif()
