# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "fedora/27-cloud-base"
  ENV['LC_ALL']="en_US.UTF-8"

  config.vm.define "server1" do |server1|
    server1.vm.hostname = "server1"
    server1.vm.network :forwarded_port, guest: 80, host: 4567
    server1.vm.network :forwarded_port, guest: 8080, host: 8080
    server1.vm.network "private_network", ip: "192.168.33.10"
    server1.vm.provision :shell, path: "ssh_setup.sh"
    server1.vm.provider "virtualbox" do |vb|
      vb.customize ['modifyvm', :id,'--memory', '2048']
      vb.customize ['modifyvm', :id,'--cpus', '1']
    end
  end 
  config.vm.define "server2" do |server2|
    server2.vm.box = "fedora/27-cloud-base"    
    server2.vm.hostname = "server2"
    server2.vm.provision :shell, path: "ssh_setup.sh"
    server2.vm.network :forwarded_port, guest: 80, host: 4571
    server2.vm.network "private_network", ip: "192.168.33.20"
    server2.vm.provider "virtualbox" do |vb|
      vb.customize ['modifyvm', :id,'--memory', '1024']
      vb.customize ['modifyvm', :id,'--cpus', '1']
    end
  end

  config.vm.define "server3" do |server3|
    server3.vm.box = "fedora/27-cloud-base"	  
    server3.vm.hostname = "server3"
    server3.vm.provision :shell, path: "ssh_setup.sh"
    server3.vm.network :forwarded_port, guest: 80, host: 4572
    server3.vm.network "private_network", ip: "192.168.33.30"
    server3.vm.provider "virtualbox" do |vb|
      vb.customize ['modifyvm', :id,'--memory', '1024']
      vb.customize ['modifyvm', :id,'--cpus', '1']
    end
  end

end

