#FROM dkimg/opencv:4.5.1-ubuntu as basalt-essential
#FROM ubuntu:focal as basalt-essential
FROM ros:noetic-ros-base-focal as basalt-essential

RUN apt update && apt install -y build-essential \
  cmake \
  wget \
  git \
  unzip \
  yasm \
  sudo \
  lsb-release \
  && apt -y clean all \
  && rm -rf /var/lib/apt/lists/*

RUN sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0D97B6C9 \
  &&sudo sh -c 'echo "deb [arch=amd64] http://packages.usenko.eu/ubuntu focal main" > /etc/apt/sources.list.d/basalt.list'\
&& sudo apt-get update \
&& sudo apt-get install -y basalt

# CV bridge for ROS
RUN apt-get install -y ros-noetic-cv-bridge

# Install python oppencv
RUN apt install -y python3 python3-pip && pip3 install opencv-python
