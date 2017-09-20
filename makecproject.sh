#!/bin/bash

echo "What language will the project be written in?(Write C or C++)"
read language
	echo "Project Name: "
	read project

	mkdir  $project
	mkdir  $project/src
	mkdir  $project/includes
	mkdir  $project/build
	mkdir  $project/bin
	mkdir  $project/lib
	mkdir  $project/doc

$main = ""
if [$language = "C++"];then 
	$main = "main.cpp"
	touch $project/src/$main
else if [$language= "C"];then 
	$main="main.c"
	touch $project/src/$main
cd $project
##VIM
##YCM Generator for Project dependent compilation flags, makes my life easier. 
echo "Vim or emacs?"
read editor

if [editor = "Vim"]; then
	./config_gen.py $project
else if [editor = "Emacs"]; then
	bear make

touch CMakeLists.txt
vim src/$main
