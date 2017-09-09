#!/bin/bash

echo "Project Name: "
read project

mkdir  $project
mkdir  $project/src
mkdir  $project/includes
mkdir  $project/build
mkdir  $project/bin
mkdir  $project/lib
mkdir  $project/doc

touch $project/src/main.cpp


##VIM
##YCM Generator for Project dependent compilation flags, makes my life easier. 
./config_gen.py $project
vim $project/src/main.cpp
