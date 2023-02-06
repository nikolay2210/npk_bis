# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
 config.vm.box = "ubuntu/bionic64"

    #vm vm
  config.vm.define "vm", primary: true do |vm|
    vm.vm.network "public_network", bridge: "wlp1s0"
    vm.vm.hostname = "vm"
    vm.vm.provision :shell, :path => "bootstrap.sh"
    vm.vm.synced_folder ".", "/infrastructure"
    vm.vm.provider "virtualbox" do |vm|
#      vm.customize ["modifyvm", :id, "--natdnshostresolver1", "on", ]
      vm.memory = "4096"
      vm.cpus = "2"
    end
  end
end
