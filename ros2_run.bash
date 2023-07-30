#!/bin/bash

# Load ROS2 environment
ROS_DISTRO="humble"
source /opt/ros/$ROS_DISTRO/setup.bash

# Load ROS2 agent
source install/local_setup.sh

# Run ROS2 agent
ros2 run micro_ros_agent micro_ros_agent serial --baudrate 115200 --dev /dev/ttyACM0