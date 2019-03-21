#!/usr/bin/bash -xe

yum install ansible -y
sudo -H -u vagrant echo y | sudo -H -u vagrant ssh-keygen -t rsa -N "" -f ~vagrant/.ssh/id_rsa
sudo -H -u vagrant sshpass -p vagrant ssh-copy-id -o StrictHostKeyChecking=no vagrant@192.168.100.3
sudo -H -u vagrant sshpass -p vagrant ssh-copy-id -o StrictHostKeyChecking=no vagrant@192.168.100.4
sudo -H -u vagrant sshpass -p vagrant ssh-copy-id -o StrictHostKeyChecking=no vagrant@192.168.100.5

