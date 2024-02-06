cmake_minimum_required(VERSION 3.28)
project(Singer CXX)

# 静态
# include_directories(${PROJECT_SOURCE_DIR}/include)
# link_directories(${PROJECT_SOURCE_DIR}/a)
# link_libraries(singer)
# add_executable(app main.cpp)

# 动态
include_directories(${PROJECT_SOURCE_DIR}/include)
link_directories(${PROJECT_SOURCE_DIR}/so)
add_executable(app main.cpp)
target_link_libraries(app PUBLIC singer)