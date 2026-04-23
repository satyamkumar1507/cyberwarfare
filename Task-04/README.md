# Task 4 - Secure Monitoring Logs with User and Permission Configuration

## Overview
This task focuses on securing monitoring logs by creating a dedicated user and restricting access to the monitoring directory using Linux file permissions. The goal is to implement proper access control so that only authorized users can access sensitive monitoring data.

## Objective
- Create a dedicated user for monitoring operations
- Create monitoring directory `/opt/container-monitor`
- Assign ownership to the created user
- Provide full access only to the monitoring user
- Restrict access for all other users
- Verify access control settings

## Technologies Used
- Linux (Ubuntu)
- Bash
- User Management (adduser)
- File Permissions (chmod, chown)

## Project Structure
Project-Submission/
├── Task-4/
│   ├── README.md
│   └── user-and-permission-configuration.sh

## Implementation Steps

### 1. Create a dedicated user
sudo adduser monitoruser

### 2. Create monitoring directory
sudo mkdir -p /opt/container-monitor/logs

### 3. Assign ownership to monitoring user
sudo chown -R monitoruser:monitoruser /opt/container-monitor

### 4. Set permissions (restrict access)
sudo chmod -R 700 /opt/container-monitor

## Permission Details
- Owner (monitoruser): read, write, execute (7)
- Group: no access (0)
- Others: no access (0)

This ensures complete isolation of monitoring data.

## Verification

Check directory ownership:
ls -ld /opt/container-monitor

Expected output:
drwx------ monitoruser monitoruser /opt/container-monitor

Test access with different user:
ls /opt/container-monitor

Expected result:
Permission denied

## Key Learning
- Linux user management
- File ownership and permissions
- Principle of Least Privilege (PoLP)
- Secure system design for logs

## Security Concept
This task implements Principle of Least Privilege, ensuring that only the required user (monitoruser) has access to sensitive monitoring data while restricting all other users.

## Outcome
- Dedicated monitoring user created
- Secure directory setup completed
- Proper ownership assigned
- Access restricted successfully
- Verification completed

