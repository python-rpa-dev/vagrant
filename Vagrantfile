# -*- mode: ruby -*-
# vi: set ft=ruby :

# Group
VM_GROUP = "/vagrant"

# Box / OS
VAGRANT_BOX = "ubuntu/focal64"

# Name for VM
VM_NAME = "lub-ws-64"

# Vagrant folder
VM_FOLDER = "/vagrant/scripts"

Vagrant.configure("2") do |config|
  config.vm.box = VAGRANT_BOX
  config.ssh.insert_key = false
  config.ssh.forward_x11 = true

  #config.vm.network "forwarded_port", guest: 8080, host: 8080, host_ip: "127.0.0.1"
  config.vm.hostname = VM_NAME

  config.vm.synced_folder "./scripts", VM_FOLDER

  config.vm.provider "virtualbox" do |vb|
  #
  # Customize the amount of memory on the VM:
  # Sizing required to run GUI and RPA bot
    vb.memory = "3072"
    vb.cpus   = 2
    vb.name   = VM_NAME
    vb.customize ["modifyvm", :id, "--groups", VM_GROUP]
    vb.customize ["storagectl", :id, "--name", "SCSI", "--hostiocache", "on"]
  end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  #   apt-get install -y apache2
  config.vm.provision :shell, path: "scripts/bootstrap_lubuntu_ws.sh", :args => VM_FOLDER, privileged: false
  # config.vm.provision :reload
end
