#!/bin/bash
set -e

vcs import < src/ros2.repos src
vcs import < src/mini_pupper_ros/.minipupper.repos --recursive src

sudo apt-get update
rosdep update
rosdep install --from-paths src --ignore-src -s
