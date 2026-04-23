# 🚀 DevOps Assignment: Server Setup, Docker Deployment, Monitoring & Security

## 📌 Overview

This project demonstrates end-to-end DevOps practices including:

* Linux server setup
* Secure SSH configuration
* Docker-based application deployment
* Automated container monitoring
* Access control and security hardening
* Firewall configuration

---

# 🧩 Tasks Covered

## ✅ Task 1: Server Setup & SSH Configuration

### 📋 Description

Provisioned a Linux server and configured secure SSH access using key-based authentication.

### ⚙️ Steps Performed

* Installed SSH server
* Generated SSH key pair
* Configured passwordless login
* Disabled password authentication for enhanced security

### 🎯 Outcome

Secure remote access to the server using SSH keys without password authentication.

---

## ✅ Task 2: Docker Installation & Application Deployment

### 📋 Description

Installed Docker and deployed a custom web application using a containerized approach.

### ⚙️ Steps Performed

* Installed and configured Docker
* Created a custom `index.html` page
* Wrote a Dockerfile using Nginx
* Built Docker image
* Ran container exposing port `8000`

### 🐳 Dockerfile

```dockerfile
FROM nginx:latest
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
```

### 🌐 Access Application

http://<server-ip>:8000

### 🎯 Outcome

Web application successfully deployed and accessible via browser.

---

## ✅ Task 3: Container Monitoring Automation

### 📋 Description

Created a monitoring script to track container CPU and memory usage with timestamps.

### ⚙️ Steps Performed

* Wrote monitoring script using `docker stats`
* Captured CPU and memory usage
* Added timestamps to logs
* Automated execution using cron job (every minute)
* Stored logs in `/opt/container-monitor/logs/`

### 📜 Monitoring Script

```bash
#!/bin/bash

container_name="mycontainer"
log_file="/opt/container-monitor/logs/monitor.log"

timestamp=$(date "+%Y-%m-%d %H:%M:%S")
stats=$(docker stats --no-stream --format "{{.CPUPerc}} {{.MemUsage}}" $container_name)

echo "$timestamp | $stats" >> $log_file
```

### 🎯 Outcome

Automated container monitoring with logs generated every minute.

---

## ✅ Task 4: Secure Monitoring Logs

### 📋 Description

Restricted access to monitoring logs using a dedicated Linux user.

### ⚙️ Steps Performed

* Created a dedicated user `monitoruser`
* Created monitoring directory `/opt/container-monitor`
* Assigned ownership to monitoring user
* Applied strict permissions (`700`)
* Verified restricted access

### 🔐 Permissions

* Full access: `monitoruser`
* No access: other users

### 🎯 Outcome

Monitoring logs are securely stored with restricted access.

---

## ✅ Task 5: Firewall Configuration

### 📋 Description

Configured firewall rules using UFW to restrict unauthorized access.

### ⚙️ Rules Applied

* Allow SSH access only from a specific IP
* Allow HTTP (port 80)
* Allow application traffic (port 8000)

### 🔥 Commands

```bash
sudo ufw allow from <your-ip> to any port 22
sudo ufw allow 80
sudo ufw allow 8000
sudo ufw enable
```

### 🎯 Outcome

Secure firewall configuration allowing only required services.

---

# 📂 Project Structure

```
Project-Submission/
├── Task-1/
├── Task-2/
├── Task-3/
├── Task-4/
├── Task-5/
├── Dockerfile
├── index.html
├── monitor.sh
└── README.md
```

---

# 🛠️ Technologies Used

* Linux (Ubuntu)
* SSH
* Docker
* Nginx
* Bash Scripting
* Cron Jobs
* UFW Firewall

---

# 🎯 Key Learnings

* Secure server access using SSH keys
* Containerization using Docker
* Automating system monitoring
* Linux file permissions and access control
* Firewall configuration for system security

---

