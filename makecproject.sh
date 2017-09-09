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

vim $project/src/main.cpp
