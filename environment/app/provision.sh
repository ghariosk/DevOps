#!/bin/bash

# update the sources list and upgrade any exisiting packges 
sudo apt-get update -y
sudo apt-get upgrade -y 

# install nginx
sudo apt-get install nginx -y

# install node version 6..
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y

# install pm2
npm install pm2 -g




# 

cd app


node app.js


