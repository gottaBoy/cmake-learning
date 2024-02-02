cmake_minimum_required(VERSION 3.28)
#project(Singer CXX)
project(Singer)
# 1. 写入相对路径; 2. 源码引入头文件时需要写入相对路径
add_executable(Singer main.cpp singer/jaychou.cpp)
