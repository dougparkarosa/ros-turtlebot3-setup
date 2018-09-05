#!/bin/bash
# launch everything to bring up a turtlebot3 simulator

export WSROOT=$1
export TURTLEBOT3_MODEL=$2

echo "Turtlebot3 Workspace directory =" $WSROOT
echo "Turtlebot3 model = " $TURTLEBOT3_MODEL

//source /opt/ros/melodic/setup.bash
source $WSROOT/devel/setup.bash

echo "ROS_ROOT=" $ROS_ROOT
echo "ROS_PACKAGE_PATH = " $ROS_PACKAGE_PATH

# roscore is first.
gnome-terminal --tab-with-profile="ROS" -- "roscore" &
sleep 2 # Give roscore a moment to launch

# Launch the simiulator "RViz"
gnome-terminal --tab-with-profile="ROS" -- "./turtlebot3_simLaunch.sh" &
sleep 1 # This may not be needed.

# Launch the process to take in key strokes to move the simulation
gnome-terminal --tab-with-profile="ROS" -- "./turtlebot3_simKey.sh" &
sleep 1 # this probably isn't needed.
