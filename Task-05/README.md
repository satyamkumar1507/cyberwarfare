# Task 5 - Firewall Configuration using UFW

## Overview
This task configures a secure firewall using UFW (Uncomplicated Firewall) to restrict unauthorized access while allowing required services like SSH, HTTP, and application traffic.

## Objective
- Install and configure UFW
- Allow SSH access only from a specific IP
- Allow HTTP access (port 80)
- Allow application traffic (port 8000)
- Block all other incoming traffic

## Technologies Used
- Linux (Ubuntu)
- UFW Firewall

## Project Structure
Project-Submission/
├── Task-5/
│   ├── README.md
│   └── firewall-configuration.sh

## Implementation Steps

### 1. Install UFW
sudo apt update
sudo apt install ufw -y

### 2. Reset Firewall
sudo ufw --force reset

### 3. Set Default Policies
sudo ufw default deny incoming
sudo ufw default allow outgoing

### 4. Allow SSH from specific IP
sudo ufw allow from <YOUR_IP> to any port 22

### 5. Allow HTTP
sudo ufw allow 80

### 6. Allow Port 8000
sudo ufw allow 8000

### 7. Enable Firewall
sudo ufw enable

## Verification

Check firewall status:
sudo ufw status verbose

Expected Output:
- Port 22 allowed only from specific IP
- Port 80 allowed
- Port 8000 allowed
- All other incoming traffic denied

## Key Concepts
- UFW (Uncomplicated Firewall)
- Network security
- Port-based access control
- Principle of least privilege

## Outcome
- Secure firewall configured
- SSH restricted to a specific IP
- Required services allowed
- Unauthorized access blocked
