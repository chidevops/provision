#!/bin/bash -e

wget --no-check-certificate 'https://raw.githubusercontent.com/chidevops/provision/master/ansible/ssh_config/vagrant.pub' -O /home/vagrant/.ssh/authorized_keys
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh
