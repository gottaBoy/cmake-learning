option(USE_JAYCHOU2 "use jaychou2" ON)
if(USE_JAYCHOU2)
    set(SRC jaychou.cpp lamjj.cpp jaychou2.cpp)
else()
    set(SRC jaychou.cpp lamjj.cpp)
endif()
add_library(SingerLib OBJECT ${SRC})

if(USE_JAYCHOU2)
    target_compile_definitions(SingerLib PRIVATE  "USE_JAYCHOU2")
else()
    set(SRC jaychou.cpp lamjj.cpp)
endif()

# 头文件目录声明 可以直接引用
target_include_directories(SingerLib PUBLIC .)
