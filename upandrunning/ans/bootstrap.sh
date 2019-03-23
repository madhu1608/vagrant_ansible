#!/bin/bash -xe
apt-get update -y
apt-get install ansible sshpass -y
pwd
/vagrant/ans/seamless-login-to-nodes.sh
echo $HOSTNAME is ready

