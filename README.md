# How to run your first virtual machine .

## Downloads 

### 1. Download Virtual Box :

http://download.virtualbox.org/virtualbox/5.1.30/VirtualBox-5.1.30-118389-OSX.dmg




### 2.  Download Vagrant

https://releases.hashicorp.com/vagrant/2.0.0/vagrant_2.0.0_x86_64.dmg?_ga=2.22479548.604049435.1508244272-926930284.1508244272




## After Installing :


Using the the command line create and set directory of file :


* create a new folder  :

* in the terminal type :

mkdir folder_name


cd folder_name 



#------------------------------------------------------------
## Bonus :



* git clone :

git@github.com:ghariosk/DevOps.git


* run in the terminal :

vagrant up


* then run :


vagrant ssh

* Then jump to step 8

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

7.  Then Enter :

vagrant reload




8. Now open up:
http//:development.local


 to check if everything is alrright. If not run try the code again. 













