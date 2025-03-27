# MediPlus Hospital - Dockerized Responsive Website (Nginx)

[![Docker](https://img.shields.io/badge/Docker-✓-blue?logo=docker)](https://www.docker.com/)
[![Nginx](https://img.shields.io/badge/NGINX-✓-brightgreen?logo=nginx)](https://nginx.org/)
[![Responsive](https://img.shields.io/badge/Responsive-✓-ff69b4)](https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Responsive_Design)

A fully responsive hospital website template containerized with Docker and served via Nginx for easy deployment.

## Features

- **Responsive Design**: Works on all devices (desktop, tablet, mobile)
- **Dockerized**: Easy deployment with containerization
- **Nginx Server**: Lightweight and high-performance web serving
- **Modern UI**: Clean, professional hospital website template
- **Quick Setup**: Deploy in minutes

## Prerequisites

- Docker installed ([Install Docker](https://docs.docker.com/get-docker/))
- Git (optional)

## Getting Started

1. Open Ubuntu terminal and list home directory contents
**ls **

2. Download MediPlus template (replace URL with actual zip file)
**wget https://freecss.com/mediplus-template.zip**

3. List downloaded files
**ls**

4. Unzip the file (assuming it's named mediplus-template.zip)

5. Rename extracted folder to 'mediplus'
**mv mediplus-template mediplus**

6. Enter the project directory
**cd mediplus**

8. List contents to verify structure
**ls**

9. Create Dockerfile
**sudo touch Dockerfile**

10. Open in VS Code
**code .**

Dockerfile for MediPlus Hospital Website on Vscode

Stage 1: Use official Nginx image
**FROM nginx:latest**

Stage 2: Remove default Nginx config
**RUN rm -rf /usr/share/nginx/html/***

Stage 3: Copy website files
**COPY . /usr/share/nginx/html**

Stage 4: **Expose port 80**


Stage 5: Start Nginx
**CMD ["nginx", "-g", "daemon off;"]**

Stage 6: Build the image
**docker build -t mediplus:1 .**

Stage 7: Run the container
**docker run -d --name hospital -p 100:80 mediplus:1**

Stage 8: Run **ifconfig** to view IP address of container

Stage 9: Paste the container IP address and the port on the browser to view your mediplus website.
172.17.0.1:100 to view your ruuning container.

### Author  

**Subair Nurudeen Adewale**  
[![LinkedIn](https://img.shields.io/badge/-LinkedIn-blue?style=flat&logo=linkedin)](https://www.linkedin.com/in/subair-nurudeen-adewale-1b46aa28b/) 
[![Hashnode](https://img.shields.io/badge/-Hashnode-2962FF?style=flat&logo=hashnode)](https://nucloud.hashnode.dev)  

### 🛠️ Technical Expertise  
- **Cloud DevOps Engineer** (AWS | CI/CD | IaC)  
- **IT Telecom Support Technician**  
- **Application Security Tester** (OWASP | PenTesting)
- **Co-Founder Codespehere Academy**

### 📫 Let's Connect  
- Blog: [NuCloud on Hashnode](https://nucloud.hashnode.dev)    
- Email:Nuddywale@gmail.com  

---
## 📜 Educational License

This project and all associated materials are licensed **for educational purposes only**.
