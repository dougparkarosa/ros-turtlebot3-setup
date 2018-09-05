#!/bin/bash
# Script to launch simulator

echo "ROS_ROOT=" $ROS_ROOT
echo "ROS_PACKAGE_PATH = " $ROS_PACKAGE_PATH

roslaunch turtlebot3_fake turtlebot3_fake.launch
