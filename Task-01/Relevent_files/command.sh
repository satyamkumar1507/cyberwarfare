#!/bin/bash

# Install SSH
sudo apt update
sudo apt install openssh-server -y

# Start SSH
sudo systemctl start ssh
sudo systemctl enable ssh

# Create user
sudo adduser devopsuser

# Generate SSH key
ssh-keygen

# Copy SSH key
ssh-copy-id devopsuser@localhost

# Disable password login
sudo sed -i 's/^#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config

# Restart SSH
sudo systemctl restart ssh