# ros-turtlebot3-setup
Collection of scripts to aid in setting up a turtlebot3 simiulator.

This assumes a ros melodic install, but this may work for older
distributions.

Also a script and support scripts to launch the turtlebot3 simulator
in 3 tabs of gnome-terminal.

To install and build in a catkin workspace type something like:

turtlebot3_install.sh <your workspace directory>

This will create the directory, download and build the turtlebot3 
software and simulators.

After installing you can set up a profile in your gnome-terminal
called ROS. Then you can run the following script which will
launch roscore, a simulator with the turtlebot of your choice and 
a keyboard input process to control the simulator. Each is opened
in a separate tab in the gnome-terminal that you are running.

./turtlebot3_sim.sh <your workspace directory> <turtlebot3 model>
<turtlebot3 model> can be one of "burger" "waffle" or "waffle_pi"
