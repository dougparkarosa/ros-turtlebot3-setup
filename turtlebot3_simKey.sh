#!/bin/bash
# Script to launch simulator key input

echo "ROS_ROOT=" $ROS_ROOT
echo "ROS_PACKAGE_PATH = " $ROS_PACKAGE_PATH

roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch
