#!/usr/bin/bash -xe
yum update -y
yum install ansible -y
echo /vagrant/seamless-login-to-nodes.sh >> ~vagrant/.bashrc
echo $HOSTNAME is ready

