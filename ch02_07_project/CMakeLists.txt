cmake_minimum_required(VERSION 3.28)
project(Singer)

# 设置C++标准
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

configure_file(config.h.in config.h)

# 添加子目录
add_subdirectory(singer)
add_executable(Singer main.cpp)
# 连接库文件
target_link_libraries(Singer PUBLIC SingerLib)
target_include_directories(Singer PUBLIC "${PROJECT_BINARY_DIR}" "${PROJECT_SOURCE_DIR}/singer")
