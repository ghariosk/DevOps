# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

	required_plugins = %w( vagrant-hostsupdater )
		required_plugins.each do |plugin|
		exec "vagrant plugin install #{plugin};vagrant #{ARGV.join(" ")}" unless Vagrant.has_plugin? plugin || ARGV[0] == 'plugin'
	end
	config.vm.box = "ubuntu/xenial64"

	config.vm.define "app" do |app| 

		app.vm.box = "app"

		app.vm.network "private_network", ip: "192.168.10.100"
		app.hostsupdater.aliases = ["development.local"]

		#sync app foldre to the guest
		app.vm.synced_folder "app", "/home/ubuntu/app"

		app.vm.synced_folder "environment", "/home/ubuntu/environment"

		# executes the command in the provisionning script
		app.vm.provision "shell", path: "environment/app/provision.sh"

	end


	config.vm.define "db" do |db|
		db.vm.network "private_network", ip: "192.168.10.101"
		db.hostsupdater.aliases = ["database.local"]


	



end
