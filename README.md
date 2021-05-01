# Video to rosbag
Several camera calibration tools such as Kalibr or Basalt work with ROS bags as input.
This makes working with these tools to calibrate ordinary cameras from video footage
a bit difficult. 

This repo contans a docker container with all the requirements to convert a video
to a rosbag (single camera without IMU information).

# Usage
-  Put a calibration video called `calibrate.mp4` into the `shared` directory of this repo
- `sh build_and_make_bag.sh`
- Resulting `calibrate.bag` will be in `shared` directory.
