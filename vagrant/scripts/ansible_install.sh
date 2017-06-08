#!/bin/bash -e

echo 'vagrant  ALL=NOPASSWD: ALL
     %admin  ALL=NOPASSWD: ALL
     %admin  ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

# install ansible (http://docs.ansible.com/intro_installation.html)
apt-get -y update
apt-get -y install software-properties-common curl
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get -y install ansible
