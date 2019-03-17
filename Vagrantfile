# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "web" do |web|
    web.vm.box                      = "hashicorp-vagrant/centos-7.4"
    web.ssh.username                = "vagrant"
    web.ssh.password                = "vagrant"
    web.ssh.insert_key              = false
    web.ssh.forward_agent           = true
    web.vm.hostname                 = "web.ubuntu.com"

    web.vm.network                  "private_network", ip: "192.168.100.5"
    web.vm.synced_folder            "web", "/vagrant"
  end

  config.vm.define "ctr" do |ctr|
    ctr.vm.box                      = "hashicorp-vagrant/centos-7.4"
    ctr.ssh.username                = "vagrant"
    ctr.ssh.password                = "vagrant"
    ctr.ssh.insert_key              = false
    ctr.ssh.forward_agent           = true
    ctr.vm.hostname                 = "ctr.ubuntu.com"

    ctr.vm.network                  "private_network", ip: "192.168.100.4"
    ctr.vm.synced_folder            "ctr", "/vagrant"
    ctr.vm.provision                :shell, path: "ctr/bootstrap.sh"
  end
end


