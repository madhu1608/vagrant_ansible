#!/usr/bin/bash -xe

yum update -y
yum install ansible -y
yum install git -y

sudo -H -u vagrant echo y | ssh-keygen -t rsa -N "" -f ~vagrant/.ssh/id_rsa
sudo -H -u vagrant sshpass -p vagrant ssh-copy-id -o StrictHostKeyChecking=no vagrant@192.168.100.8
git clone https://github.com/madhu1608/vagrant_samples.git
cp vagrant_samples/ansible.cfg /home/vagrant/
cp vagrant_samples/ansible_hosts /home/vagrant/
cp vagrant_samples/mastery.yml /home/vagrant/
chown vagrant. /home/vagrant/ansible.cfg /home/vagrant/ansible_hosts /home/vagrant/mastery.yml

#sudo -H -u vagrant ansible all -m ping
#ansible-playbook -i mastery_hosts -c local -v --limit backend mastery.ymlsudo -H -u vagrant ansible all -m pingsudo -H -u vagrant ansible all -m ping
