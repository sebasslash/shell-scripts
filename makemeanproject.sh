#!/bin/bash


echo "Create MEAN app name:"
read appName
echo "Do you have a remote repository? (y/n):"

read -s -n 1 key 

if [[$key = "y"]]; then
	echo "Enter remote repository:"
	read repo
	git clone $repo
	mkdir $repo/$appName
	mkdir $repo/$appName/api
	mkdir $repo/$appName/api/controllers
	mkdir $repo/$appName/api/routes
	mkdir $repo/$appName/api/models

	mkdir $repo/$appName/public
	mkdir $repo/$appName/public/css
	mkdir $repo/$appName/public/js
	mkdir $repo/$appName/public/images
	mkdir $repo/$appName/public/angular-app

	touch $repo/$appName/app.js
	touch $repo/$appName/public/angular-app/app.js
	touch $repo/$appName/public/angular-app/index.html
	
	cd $repo/$appName
	npm init
else
	mkdir $appName
	mkdir $appName/api
	mkdir $appName/api/controllers
	mkdir $appName/api/routes
	mkdir $appName/api/models

	mkdir $appName/public
	mkdir $appName/public/css
	mkdir $appName/public/js
	mkdir $appName/public/images
	mkdir $appName/public/angular-app

	touch $appName/app.js
	touch $appName/public/angular-app/app.js
	touch $appName/public/angular-app/index.html

	cd $appName
	git init 
	npm init
fi


