cmake_minimum_required(VERSION 3.28)
project(Singer CXX)
# 添加源码目录
# aux_source_directory(. SINGER_SRC)
file(GLOB SRC ${PROJECT_SOURCE_DIR}/src/*.cpp)
include_directories(${PROJECT_SOURCE_DIR}/include)
# 静态
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/a)
add_library(singer_static STATIC ${SRC})
# 动态
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/so)
add_library(singer SHARED ${SRC})
# 修改静态名称
SET_TARGET_PROPERTIES(singer_static PROPERTIES OUTPUT_NAME "singer")
# cmake 在构建一个新的target 时，会尝试清理掉其他使用这个名字的库，如果没有清理还是会只会构建一个动态库，不会构建出静态库
# SET_TARGET_PROPERTIES(singer_static PROPERTIES CLEAN_DIRECT_OUTPUT 1)
