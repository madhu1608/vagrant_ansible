#!/usr/bin/bash -xe
echo y | ssh-keygen -t rsa -N "" -f ~vagrant/.ssh/id_rsa
sshpass -p vagrant ssh-copy-id -o StrictHostKeyChecking=no vagrant@192.168.100.3
cd /vagrant/playbooks
