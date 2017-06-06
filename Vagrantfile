# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.define "master", primary: true do |m|
    m.vm.box = "ubuntu/xenial64"
    m.vm.hostname = "master"
    m.vm.network "private_network", ip: "10.0.15.10"
    m.vm.provider "virtualbox" do |vb|
      vb.name = "master"
      vb.memory = "256"
      vb.customize ["modifyvm", "master", "--natdnshostresolver1", "on"]
    end
    m.vm.provision "shell", path: "ansible/files/ansible_install.sh"
  end
  # Loop to create three slave nodes
  (1..3).each do |i|
    config.vm.define "node#{i}", autostart: false do |node|
      node.vm.box = "ubuntu/xenial64"
      node.vm.hostname = "node#{i}"
      node.vm.network "private_network", ip: "10.0.15.2#{i}"
      node.vm.network "forwarded_port", guest: 80, host: "808#{i}"
      node.vm.provider "virtualbox" do |vb|
        vb.name = "node#{i}"
        vb.memory = "256"
        vb.customize ["modifyvm", "node#{i}", "--natdnshostresolver1", "on"]
      end
    end
  end
end
