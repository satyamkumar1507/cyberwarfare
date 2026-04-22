# Task 3 - Docker Container Resource Monitoring with Cron Automation

## Overview
This project implements an automated Docker container monitoring system using a Bash script and cron job scheduling. It continuously tracks CPU usage, memory usage, and container status, and logs the information with timestamps for monitoring and analysis.

## Objective
- Monitor Docker container CPU usage
- Monitor Docker container memory usage
- Track container running/stopped status
- Automate monitoring using cron (every 1 minute)
- Store logs with timestamps in a dedicated directory

## Technologies Used
- Linux (Ubuntu)
- Docker
- Bash Scripting
- Cron Jobs

## Project Structure
Project-Submission/
├── Task-03/
│   ├── monitor.sh              # Main monitoring script
│   └── README.md               # Documentation

## Setup Instructions

### 1. Create required directories
sudo mkdir -p /opt/container-monitor/logs
sudo chown -R $USER:$USER /opt/container-monitor

### 2. Make script executable
chmod +x Task-03/monitor.sh

### 3. Test script manually
/bin/bash Task-03/monitor.sh

### 4. Setup Cron Job (Automation)
sudo crontab -e

Add this line:
* * * * * /bin/bash /home/satyam/Project-Submission/Task-03/monitor.sh >> /opt/container-monitor/logs/cron.log 2>&1

## Log Format

When container is running:
YYYY-MM-DD HH:MM:SS | container-name | CPU: xx% | MEM: xxMiB / xxGiB

When container is stopped:
YYYY-MM-DD HH:MM:SS | container-name | STATUS: NOT RUNNING

Cron heartbeat (if enabled):
YYYY-MM-DD HH:MM:SS | CRON RUNNING

## How It Works
- Cron runs every 1 minute
- Script collects Docker container stats using docker stats
- CPU and memory usage are extracted
- Logs are stored in monitor.log
- If container is not running, status is logged instead

## Example Output
2026-04-22 14:40:26 | web-container | CPU: 0.00% | MEM: 13.05MiB / 15.44GiB
2026-04-22 14:46:49 | CRON RUNNING
2026-04-22 14:46:49 | web-container | CPU: 0.00% | MEM: 13.05MiB / 15.44GiB

## Prerequisites
- Ubuntu/Linux system
- Docker installed and running
- Cron service enabled
- Bash shell

## Key Learnings
- Linux cron automation
- Docker monitoring using CLI
- Bash scripting
- Log management
- System debugging
