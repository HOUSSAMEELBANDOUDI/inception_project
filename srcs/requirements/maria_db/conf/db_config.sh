#!/bin/bash

echo "Setting up mariadb..."
mariadb-install-db --user=mysql --datadir=/var/lib/mysql
mariadbd-safe &

sleep 15

mariadb -e "CREATE DATABASE IF NOT EXISTS $DATABASE_NAME; \
CREATE USER '$DATABASE_USER'@'%' IDENTIFIED BY '$DATABASE_USER_PASSWORD'; \
GRANT ALL ON $DATABASE_NAME.* TO '$DATABASE_USER'@'%' IDENTIFIED BY '$DATABASE_USER_PASSWORD'; \
ALTER USER '$DATABASE_ROOT'@'localhost' IDENTIFIED BY '$DATABASE_ROOT_PASSWORD'; \
FLUSH PRIVILEGES;"

