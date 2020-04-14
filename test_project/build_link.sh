#!/usr/bin/bash
curr_path=`pwd`
compilr=gcc
lib_name=functions
exe=run
lib_so_path=$curr_path/lib

#create an obj file (Position ind code- PIC))
$compilr -c -Wall -Werror -fpic $lib_name.c
#create a shared object
$compilr -shared -o $lib_so_path/lib$lib_name.so $lib_name.o
#link with shared lib
$compilr -L$lib_so_path -Wall -o $exe main.c -l$lib_name
