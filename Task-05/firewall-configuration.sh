#!/bin/bash

read -p "Enter the IP allowed for SSH access: " MY_IP

echo "Using IP: $MY_IP"

echo "Updating system..."
sudo apt update -y

echo "Installing UFW..."
sudo apt install ufw -y

echo "Resetting UFW..."
sudo ufw --force reset

echo "Setting default policies..."
sudo ufw default deny incoming
sudo ufw default allow outgoing

echo "Allowing SSH only from given IP..."
sudo ufw allow from $MY_IP to any port 22

echo "Allowing HTTP (port 80)..."
sudo ufw allow 80

echo "Allowing port 8000..."
sudo ufw allow 8000

echo "Enabling firewall..."
sudo ufw --force enable

echo "Firewall status:"
sudo ufw status verbose

echo "Task 5 completed successfully"