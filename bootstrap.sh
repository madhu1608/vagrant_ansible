#!/usr/bin/bash -xe

yum update -y
yum install ansible -y
yum install git -y

sudo -H -u vagrant echo y | ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa
sudo -H -u vagrant ssh-copy-id vagrant@192.168.100.5
sudo -H -u vagrant git clone https://github.com/madhu1608/vagrant_samples.git .
sudo -H -u vagrant ansible all -m ping
