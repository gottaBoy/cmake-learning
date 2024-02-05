cmake_minimum_required(VERSION 3.28)
project(Singer CXX)
# 添加源码目录
file(GLOB SRC ${PROJECT_SOURCE_DIR}/src/*.cpp)
include_directories(${PROJECT_SOURCE_DIR}/include)
# 静态
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/a)
add_library(singer STATIC ${SRC})
# 动态
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/so)
add_library(singer SHARED ${SRC})

