cmake_minimum_required(VERSION 3.28)
project(Singer)
# 添加子目录
add_subdirectory(singer)
add_executable(Singer main.cpp)
# 连接库文件
target_link_libraries(Singer PUBLIC SingerLib)
# 默认STATIC library
# add_library()
# 头文件目录声明 可以直接引用
target_include_directories(Singer PUBLIC "${PROJECT_BINARY_DIR}" "${PROJECT_SOURCE_DIR}/singer")
