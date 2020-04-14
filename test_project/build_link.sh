#!/usr/bin/bash

compilr=gcc
lib_name=functions
exe=run

#create an obj file (Position ind code- PIC))
$compilr -c -Wall -Werror -fpic $lib_name.c
#create a shared object
$compilr -shared -o lib$lib_name.so $lib_name.o
#link with shared lib
$compilr -L. -Wall -o $exe main.c -l$lib_name
