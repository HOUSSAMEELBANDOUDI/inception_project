# Inception - 42 Project Badge

A 42 project aimed at learning **Docker** and **Docker Compose**. This project asks us to create a small network of 3 Docker containers:

- One containing **Nginx**
- One containing **WordPress**
- One containing **MariaDB**

All three must work together over a Docker network to display a local website.

> 📁 **This project has been archived in the state it was in at the time of evaluation.**  
> ✅ **Status:** Finished on 29/07/2025  
> 🏁 **Grade:** 100%

---

## 🚀 Usage

Launching this project requires a bit of setup:

1. **Clone the repository and go into it:**

   ```bash
   git clone <your_repo_url>
   cd inception


docker images                         # Show Docker images
docker ps                             # Show running containers
docker ps -a                          # Show all containers (including stopped)
docker volume ls                      # List Docker volumes
docker volume inspect <volume_name>  # View detailed info about a volume
docker network ls                     # List Docker networks

docker-compose logs                                # Show logs for all services
docker-compose logs --follow <container_name>      # Follow logs for a specific container
docker run -it <image_id>                          # Run a container in interactive mode
docker exec <container_name> <command>             # Run a command in a running container
docker exec -it <container_name> <command>         # Run interactively inside container
docker exec -it <container_name> sh                # Get a root shell inside a container


📚 Useful Resources
🐋 Docker
Docker Curriculum

Dockerfile Reference

How to Debug a Docker Compose Build

🏔️ Alpine Linux
Alpine Linux

🌐 Nginx
NGINX Beginner’s Guide

OpenSSL Man Page

Generate Self-Signed SSL Certificate

🛢️ MariaDB
Find MySQL my.cnf Location

Install and Configure MariaDB

MariaDB Server System Variables

Remote Access to MariaDB

📝 WordPress
PHP Official Website

Installing WordPress with curl and WP-CLI

WP-CLI Commands

WP-CLI Overview
