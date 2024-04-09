# CMakeLists
cmake_minimum_required(VERSION 3.20)
project(Server VERSION 1.0 LANGUAGES C CXX)
set(SOURCES chatlib.cpp smallchat-server.cpp)
set(CMAKE_CXX_STANDARD 20)
add_executable(smallchat-server ${SOURCES})
