# How to run your first virtual machine .

## Downloads 

### 1. Download Virtual Box :

https://www.virtualbox.org/wiki/Downloads




### 2.  Download Vagrant

https://www.vagrantup.com/downloads.html


## After Installing :


Using the the command line create and set directory of file :


* create a new folder  :

* in the terminal type :

mkdir folder_name


cd folder_name 



#------------------------------------------------------------
## Bonus :



* Clone the directory using git:

git clone git@github.com:ghariosk/DevOps.git


* Enter the directory :

cd DevOps


* Run in the terminal :

vagrant up


* Then run :


vagrant ssh

* Then jump to step 10

#-----------------------------------------------------------------------------------






1. Create a new file, open your terminal and on your command line run -- This should take a while:


vagrant init unbuntu/xenial64 



2. Then run with a text-edit open Vagrant file, replace everything in it with :

----------------------------------------------------



#-*- mode: ruby -*-
#vi: set ft=ruby :


Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"
  config.vm.network "private_network", ip: "192.168.10.100"
  config.hostsupdater.aliases = ["development.local"]

 
end




-------------------------------------------------



3.  Save and close the file and then run in the terminal --> to start the machine :

vagrant up

4.  Then to login to the machine :

vagrant ssh 


5.  At this point you should be logged in the command line of the virtual machine where you should enter :


sudo get-apt update -y


sudo get-apt install nginx -y



6.  Enterin the command line :

 exit 


7. Enter in the command-line

vagrant plugin install vagrant-hostsupdater

8.  Then Enter :

vagrant reload

 

10. Now open up:

http//:development.local


 to check if everything is alright. If not run try the code again. 













