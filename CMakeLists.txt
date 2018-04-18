set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
cmake_minimum_required(VERSION 2.8.3)
project(cnbiros_wheelchair_bochum)
find_package(catkin REQUIRED COMPONENTS)

SET(CMAKE_BUILD_TYPE RelWithDebInfo)



catkin_package(
  INCLUDE_DIRS 
  LIBRARIES 
	${PROJECT_NAME}
  CATKIN_DEPENDS
)

