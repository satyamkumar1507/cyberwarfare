#!/bin/bash


sudo apt update
sudo apt install openssh-server -y


sudo systemctl start ssh
sudo systemctl enable ssh


sudo adduser devopsuser


ssh-keygen


ssh-copy-id devopsuser@localhost


sudo sed -i 's/^#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config


sudo systemctl restart ssh