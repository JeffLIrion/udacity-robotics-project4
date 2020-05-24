#!/bin/bash

SCRIPT_ROOT_DIRECTORY="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


# 2. Simulation setup
if [ ! -d "$SCRIPT_ROOT_DIRECTORY/catkin_ws/src" ]; then
  cd "$SCRIPT_ROOT_DIRECTORY"
  git clone https://github.com/JeffLIrion/udacity-robotics-project3.git project3
  mv "$SCRIPT_ROOT_DIRECTORY/project3/catkin_ws/" "$SCRIPT_ROOT_DIRECTORY/catkin_ws/"
  rm -rf "$SCRIPT_ROOT_DIRECTORY/project3"

  "$SCRIPT_ROOT_DIRECTORY/project3_setup.sh"
fi
  
