# -*- mode: ruby -*-
# vi: set ft=ruby :
required_plugins = %w( vagrant-hostsupdater vagrant-berkshelf )
	required_plugins.each do |plugin|
	exec "vagrant plugin install #{plugin};vagrant #{ARGV.join(" ")}" unless Vagrant.has_plugin? plugin || ARGV[0] == 'plugin'
end

Vagrant.configure("2") do |config|


	config.vm.box = "ubuntu/xenial64"
	config.berkshelf.berksfile_path = 'Berksfile'
	config.berkshelf.enabled = true

	config.vm.define "app" do |app| 
		app.vm.network "private_network", ip: "192.168.10.100"
		app.hostsupdater.aliases = ["development.local"]
		#sync app foldre to the guest
		app.vm.synced_folder "app", "/home/ubuntu/app"
		app.vm.synced_folder "environment", "/home/ubuntu/environment"
		# executes the command in the provisionning script
		# app.vm.provision "shell", path: "environment/app/provision.sh"
		app.vm.provision "shell", inline: "echo 'export DB_HOST=mongodb://192.168.10.101/blog' >> .bashrc"
		app.vm.provision :chef_solo do |chef|
			chef.add_recipe "node-server"
		end
	end


	config.vm.define "db" do |db|
		db.vm.network "private_network", ip: "192.168.10.101"
		db.hostsupdater.aliases = ["database.local"]
		db.vm.synced_folder "environment", "/home/ubuntu/environment"
		db.vm.synced_folder "mongo_db", "/home/ubuntu/mongo_db"
		# db.vm.provision "shell", path: "environment/database/provision.sh"
		db.vm.provision :chef_solo do |chef|
			chef.run_list = [
				'recipe[mongodb-server]'
			]
		end
	end
end
