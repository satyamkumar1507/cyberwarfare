# Task 2: Docker Installation and Application Deployment

## 📌 Objective

Install and configure Docker on a Linux server and deploy a custom web application using a Docker container. The application should be accessible via a browser on port **8000**.

---

## 🛠️ Environment

* OS: Ubuntu (Local Machine)
* Containerization Tool: Docker
* Web Server: Nginx

---

## 🌐 Application Overview

A simple static HTML webpage (`index.html`) is deployed inside a Docker container using Nginx.

---

## ⚙️ Steps Performed

### 1. Install Docker

```bash
sudo apt update
sudo apt install docker.io -y
```

Start and enable Docker:

```bash
sudo systemctl start docker
sudo systemctl enable docker
```

---

### 2. Create index.html

A custom HTML page was created to verify deployment.

---

### 3. Create Dockerfile

```Dockerfile
FROM nginx:latest

RUN rm -rf /usr/share/nginx/html/*

COPY index.html /usr/share/nginx/html/

EXPOSE 80
```

---

### 4. Build Docker Image

```bash
docker build -t my-web-app .
```

---

### 5. Run Docker Container

```bash
docker run -d -p 8000:80 my-web-app
```

---

### 6. Access Application

Open browser and navigate to:

```
http://localhost:8000
```

OR

```
http://<your-ip>:8000
```

---

## ✅ Result

* Docker installed and configured successfully
* Custom HTML page deployed inside a container
* Application accessible via browser on port **8000**

---

## 🎯 Outcome

This task demonstrates:

* Basic Docker setup and usage
* Containerization of a static web application
* Port mapping between host and container
* Deployment using a lightweight web server


---
