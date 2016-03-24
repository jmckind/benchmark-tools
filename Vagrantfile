# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "ubuntu/trusty64"
    config.vm.hostname = "keepbench"
    config.vm.network "forwarded_port", guest: 80, host: 8000
    config.vm.network "forwarded_port", guest: 8089, host: 8089

    config.vm.provider "virtualbox" do |vbx|
        vbx.name = "keepbench"
        vbx.memory = 4096
        vbx.cpus = 2
    end

    config.vm.provision "ansible" do |ansible|
        ansible.playbook = "provision.yml"
    end
end
