# 📦 Base image: Use Debian oldstable as the foundation
FROM debian:oldstable

# 📥 Define build-time variables for WordPress and database setup
ARG DOMAIN_NAME
ARG DATABASE_NAME
ARG DATABASE_USER
ARG DATABASE_USER_PASSWORD
ARG WP_ROOT_USER
ARG WP_ROOT_EMAIL
ARG WP_ROOT_PASSWORD
ARG WP_USER
ARG WP_EMAIL
ARG WP_PASSWORD

# 🛠️ Update apt and install PHP 7.4, PHP-FPM, MySQL client, and wget
RUN apt update && \
    apt install -y \
      php7.4 \
      php7.4-fpm \
      php7.4-mysql \
      mariadb-client \
      wget

# 📂 Switch to the WordPress installation directory
WORKDIR /var/www/wordpress

# 📋 Copy the WordPress setup script into the container
COPY ./conf/wp_conf.sh /var/www/wp_conf.sh

# ✅ Make the setup script executable
RUN chmod +x /var/www/wp_conf.sh

# 📥 Download WP-CLI, install WordPress core files, prepare PHP runtime, and fix permissions
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp && \
    wp core download --allow-root && \
    mkdir /run/php && \
    chown -R www-data:www-data /run/php /var/log /var/www/wordpress

# ⚙️ Configure PHP-FPM to listen on port 9000 on all interfaces
RUN sed -i '0,/^listen/ s/^listen.*/listen = 0.0.0.0:9000/' \
    /etc/php/7.4/fpm/pool.d/www.conf

# 👤 Switch to the less-privileged www-data user for runtime
USER www-data

# 🚀 When the container starts, run the WordPress setup script
CMD [ "/var/www/wp_conf.sh" ]


