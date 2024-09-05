#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/dony/Desktop/MyProjects/dony-ee483/ee483-psu-ex-base/Ex1-Training/ex1/ex_workspace/src/catkin"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/dony/Desktop/MyProjects/dony-ee483/ee483-psu-ex-base/Ex1-Training/ex1/ex_workspace/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/dony/Desktop/MyProjects/dony-ee483/ee483-psu-ex-base/Ex1-Training/ex1/ex_workspace/install/lib/python3/dist-packages:/home/dony/Desktop/MyProjects/dony-ee483/ee483-psu-ex-base/Ex1-Training/ex1/ex_workspace/build/catkin/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/dony/Desktop/MyProjects/dony-ee483/ee483-psu-ex-base/Ex1-Training/ex1/ex_workspace/build/catkin" \
    "/usr/bin/python3" \
    "/home/dony/Desktop/MyProjects/dony-ee483/ee483-psu-ex-base/Ex1-Training/ex1/ex_workspace/src/catkin/setup.py" \
    egg_info --egg-base /home/dony/Desktop/MyProjects/dony-ee483/ee483-psu-ex-base/Ex1-Training/ex1/ex_workspace/build/catkin \
    build --build-base "/home/dony/Desktop/MyProjects/dony-ee483/ee483-psu-ex-base/Ex1-Training/ex1/ex_workspace/build/catkin" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/dony/Desktop/MyProjects/dony-ee483/ee483-psu-ex-base/Ex1-Training/ex1/ex_workspace/install" --install-scripts="/home/dony/Desktop/MyProjects/dony-ee483/ee483-psu-ex-base/Ex1-Training/ex1/ex_workspace/install/bin"
