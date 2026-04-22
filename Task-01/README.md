# Task 1: Server Setup and SSH Configuration

## Objective

Provision a Linux server locally and configure secure SSH access using key-based authentication.

---

## Environment

* OS: Ubuntu (Local Machine)
* SSH Server: OpenSSH

---

## Steps Performed

### 1. Installed SSH Server

```
sudo apt update
sudo apt install openssh-server -y
```

### 2. Started and Enabled SSH

```
sudo systemctl start ssh
sudo systemctl enable ssh
```

### 3. Created a New User

```
sudo adduser devopsuser
```

### 4. Verified SSH Login (Password-based)

```
ssh devopsuser@localhost
```

### 5. Generated SSH Key Pair

```
ssh-keygen
```

### 6. Configured Passwordless Authentication

```
ssh-copy-id devopsuser@localhost
```

### 7. Disabled Password Authentication

Edited `/etc/ssh/sshd_config`:

```
PasswordAuthentication no
```

Restarted SSH:

```
sudo systemctl restart ssh
```

---

## Result

* Successfully configured SSH access
* Implemented key-based authentication
* Disabled password-based login
* Achieved secure remote access

---

## Notes

The task was implemented on a local Ubuntu system by configuring it as a server and accessing it via SSH.

---
