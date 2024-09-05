execute_process(COMMAND "/home/dony/Desktop/MyProjects/dony-ee483/ee483-psu-ex-base/Ex1-Training/ex1/ex_workspace/build/catkin/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/dony/Desktop/MyProjects/dony-ee483/ee483-psu-ex-base/Ex1-Training/ex1/ex_workspace/build/catkin/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
