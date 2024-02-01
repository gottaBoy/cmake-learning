# cmake -P test.cmake
cmake_minimum_required(VERSION 3.28)
message("hello")
message("hahh 
ssss")
message([[ddd
ooo]])

set(Var1 test)
message(${Var1})

set(ListVar a b c d)
message(${ListVar})
set(ListVar a;b;c)
message(${ListVar})

# $PATH
# message($ENV{PATH})
# set(ENV{CXX} "g++")
# message($ENV{CXX})

# unset
# unset(ENV{CXX})
# message($ENV{CXX})

list(APPEND ports p1 p2 p3)
message(${ports})

list(LENGTH ports len)
message(${len})
list(FIND ports p1 index)
message(${index})
# list(REMOVE_ITEM ports p1)
message(${ports})
list(APPEND ports p5)
message(${ports})
list(INSERT ports 3 p4)
message(${ports})
list(REVERSE ports)
message(${ports})
list(SORT ports)
message(${ports})

set(VARBOOl TRUE)
if(VARBOOl)
  message(TRUE)
else()
  message(FALSE)
endif()

# AND OR LESS EQUAL
if(NOT VARBOOl)
  message(TRUE)
else()
  message(FALSE)
endif()

foreach(VAR RANGE 3)
    message(${VAR})
endforeach(VAR RANGE 3)

set(MY_LIST 1 2 3)
foreach(VAR IN LISTS MY_LIST ITEMS 4 f)
    message(${VAR})    
endforeach(VAR IN LISTS MY_LIST ITEMS 4 f)

# zip
set(L1 one two three four)
set(L2 1 2 3 4 5)
foreach(num IN ZIP_LISTS L1 L2)
    message("word = ${num_0}, num = ${num_1}")    
endforeach()

function(MY_FUNC FirstArg)
    message("MY_FUNC_NAME: ${CMAKE_CURRENT_FUNCTION}")
    message("FirstArg ${FirstArg}")
    set(FirstArg "New Value")
    message("FirstArg again ${FirstArg}")
    message("ARGV0 ${ARGV0}")
    message("ARGV1 ${ARGV1}")
    message("ARGV2 ${ARGV2}")
endfunction()

set(FirstArg "First Value")
MY_FUNC(${FirstArg} "Second Value")
message("FirstArg end ${FirstArg}")