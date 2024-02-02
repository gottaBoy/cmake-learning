cmake_minimum_required(VERSION 3.28)
project(Singer)
# 添加子目录
add_subdirectory(singer)
add_executable(Singer main.cpp)
# 连接库文件
target_link_libraries(Singer PUBLIC SingerLib)
