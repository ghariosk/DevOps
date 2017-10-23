#!/bin/bash


#Step 1: Import the MongoDB public key 
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
#Step 2: Generate a file with the MongoDB repository url

echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

#Step 3: Refresh the local database with the packages
sudo apt-get update
#Step 4: Install the last stable MongoDB version and all the necessary packages on our system
sudo apt-get install -y mongodb-org



sudo cp /home/ubuntu/mongo_db/mongodb.service /etc/systemd/system/






sudo cp /home/ubuntu/mongo_db/mongod.conf /etc/ 


sudo systemctl start mongodb