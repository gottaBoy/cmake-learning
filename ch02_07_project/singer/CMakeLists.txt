add_library(SingerLib OBJECT jaychou.cpp lamjj.cpp)
# 头文件目录声明 可以直接引用
target_include_directories(SingerLib PUBLIC .)
