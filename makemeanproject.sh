#!/bin/bash


echo "Create MEAN app name:"
read appName

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
