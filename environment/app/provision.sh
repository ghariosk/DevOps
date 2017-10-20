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
sudo npm install pm2 -g




# add app user and group

sudo adduser --disabled-password app


# sudo chown -R app:app app should change everythign owned to app user but the way the machine is syncing it will make ubutun owner again

sudo chown -R app:app app 

# user group folder




