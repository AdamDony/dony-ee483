#!/usr/bin/env fish
# generated from catkin/cmake/template/local_setup.fish.in

# since this file is sourced either use the provided _CATKIN_SETUP_DIR
# or fall back to the destination set at configure time

if test -z $_CATKIN_SETUP_DIR
    set _CATKIN_SETUP_DIR /home/dony/Desktop/MyProjects/dony-ee483/ee483-psu-ex-base/Ex1-Training/ex1/ex_workspace/devel/.private/my_new_package
end

set CATKIN_SETUP_UTIL_ARGS "--extend --local"
source "$_CATKIN_SETUP_DIR/setup.fish"

set -e CATKIN_SETUP_UTIL_ARGS
