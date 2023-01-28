# MiniPupper ROS2 Workspace

This workspace will get you set up using MiniPupper/ROS2 with VSCode as your IDE.

## Prerequisites

You should already have Docker and VSCode with the remote containers plugin installed on your system.

* [docker](https://docs.docker.com/engine/install/)
* [vscode](https://code.visualstudio.com/)
* [vscode remote containers plugin](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

## Quickstart

- Install the [prerequisites](#prerequisites)
- clone this repository `git clone https://github.com/AlessioMorale/minipupper_ros2_devcontainer.git`
- Open the repository folder in VSCode and, when prompted, select reopen in devcontainer.
- VSCode will proceed initialising the container, building the Dockerfile. This operation will take some time, especially with a slow connection.
- Once the workspace opens, select `Terminal > Run Task...` and select `setup`. You can alternatively run `setup.sh` from the terminal.
- wait for the code to be pulled, now `src` contains all source packages required to run Mini Pupper. 
- Select `Terminal > Run Task...` and select `build`. Wait for the build process to complete. You can alternatively run `build.sh` from the terminal.
- Check the [Mini Pupper README.md](src/mini_pupper_ros/README.md) to find out how to use it.

## How to develop with this workspace

See the detailed instruction from the awesome [template](https://github.com/athackst/vscode_ros2_workspace) from [Allison Thackston](https://github.com/athackst) used to build this workspace.

### Tasks

There are many pre-defined tasks, see [`.vscode/tasks.json`](.vscode/tasks.json) for a complete listing.  Feel free to adjust them to suit your needs.  

Take a look at [how I develop using tasks](https://www.allisonthackston.com/articles/vscode_tasks.html) for an idea on how I use tasks in my development.

### Debugging

This template sets up debugging for python files and gdb for cpp programs.  See [`.vscode/launch.json`](.vscode/launch.json) for configuration details.
