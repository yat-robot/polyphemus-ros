#!/bin/bash

# Load ROS2 environment
ROS_DISTRO="humble"
source /opt/ros/$ROS_DISTRO/setup.bash

cd uros_ws
rosdep update && rosdep install --from-paths src --ignore-src -y

colcon build

# Load micro-ROS setup environment
source install/local_setup.bash

# Build ROS2 agent
ros2 run micro_ros_setup build_agent.sh

# Load ROS2 agent
source install/local_setup.sh