cmake_minimum_required(VERSION 3.17.1)

#proj name
project (test_cmake)

#include dirs
include_directories (include)
include_directories (src)
include_directories (lib)

#search for lib in this dir
link_directories(lib)

#set sources
set(SOURCES "src/main.c")

#add exec
add_executable(run ${SOURCES})

#link to lib
target_link_libraries (run functions)






 
