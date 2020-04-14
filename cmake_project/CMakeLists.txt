cmake_minimum_required(VERSION 3.17.1)

#proj name
project (test_cmake)

#include dirs
include_directories (include)
include_directories (src)
include_directories (lib)

#search for lib in this dir
link_directories(${CMAKE_BINARY_DIR}/lib)

#set sources
set(SOURCES "src/main.c")

add_executable(run ${SOURCES})

target_link_libraries (run functions)






 
