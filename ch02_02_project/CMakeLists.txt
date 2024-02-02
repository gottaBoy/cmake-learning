cmake_minimum_required(VERSION 3.28)
#project(Singer CXX)
project(Singer)
# 1. 引入子目录中的cmake后缀配置文件
include(singer/singer.cmake)
message(${singer_source})
# 2. 配置加入add_executable
add_executable(Singer main.cpp ${singer_source})
