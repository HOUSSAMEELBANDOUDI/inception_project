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


## 📚 Useful Resources

### 🐋 Docker
- [Docker Curriculum](https://docker-curriculum.com/)
- [Dockerfile Reference](https://docs.docker.com/engine/reference/builder/)
- [How to Debug a Docker Compose Build](https://docs.docker.com/compose/reference/)

### 🏔️ Alpine Linux
- [Alpine Linux](https://alpinelinux.org/)

### 🌐 Nginx
- [NGINX Beginner’s Guide](https://nginx.org/en/docs/beginners_guide.html)
- [OpenSSL Man Page](https://www.openssl.org/docs/man1.1.1/man1/openssl.html)
- [Generate Self-Signed SSL Certificate](https://www.openssl.org/)

### 🛢️ MariaDB
- [Find MySQL `my.cnf` Location](https://mariadb.com/kb/en/configuring-mariadb-with-option-files/)
- [Install and Configure MariaDB](https://mariadb.com/kb/en/installing-and-using-mariadb/)
- [MariaDB Server System Variables](https://mariadb.com/kb/en/server-system-variables/)
- [Remote Access to MariaDB](https://phoenixnap.com/kb/mariadb-allow-remote-access)

### 📝 WordPress
- [PHP Official Website](https://www.php.net/)
- [Installing WordPress with curl and WP-CLI](https://developer.wordpress.org/cli/)
- [WP-CLI Commands](https://developer.wordpress.org/cli/commands/)
- [WP-CLI Overview](https://wp-cli.org/)

