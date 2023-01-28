FROM althack/ros2:humble-gazebo-2023-01-14
# ** [Optional] Uncomment this section to install additional packages. **
#
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get -y install --no-install-recommends  \
    ros-humble-ecl-license ros-humble-ecl-build \
    ros-humble-robot-localization ros-humble-joint-state-publisher ros-humble-xacro ros-humble-joint-state-publisher-gui \
    ros-humble-gazebo-ros ros-humble-gazebo-ros-pkgs ros-humble-gazebo-plugins ros-humble-gazebo-ros2-control ros-humble-velodyne-gazebo-plugins \
    ros-humble-rviz2 \
    ros-humble-ros2-controllers ros-humble-ros2-control \
    ros-humble-cartographer-ros \
    ros-humble-nav2-bringup \
    ros-humble-sophus ros-humble-joy ros-humble-teleop-twist-keyboard \
    ros-humble-cv-bridge \
    #
    # Clean up
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*
ENV DEBIAN_FRONTEND=dialog

# Set up auto-source of workspace for ros user
ARG WORKSPACE
RUN echo "if [ -f ${WORKSPACE}/install/setup.bash ]; then source ${WORKSPACE}/install/setup.bash; fi" >> /home/ros/.bashrc
