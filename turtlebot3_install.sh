#!/bin/bash
# Script to install turtlebot3

export WORKSPACE=$1

mkdir -p $WORKSPACE/src
cd $WORKSPACE/src
git clone https://github.com/ROBOTIS-GIT/turtlebot3_msgs.git
git clone https://github.com/ROBOTIS-GIT/turtlebot3.git
git clone https://github.com/ROBOTIS-GIT/turtlebot3_simulations.git
cd ..
catkin_make

times # Display elapsed time.
