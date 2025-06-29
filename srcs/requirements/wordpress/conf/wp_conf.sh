#!/bin/sh

echo "🕒 Waiting for MariaDB to be ready..."
sleep 15

echo "🔧 Starting WordPress installation..."
echo "  → DB Name: $DATABASE_NAME"
echo "  → DB User: $DATABASE_USER"
echo "  → Site URL: $DOMAIN_NAME"

# Check if WordPress is already configured
if [ ! -f /var/www/wordpress/wp-config.php ]; then

  # Create wp-config.php
  wp config create --allow-root \
    --path=/var/www/wordpress \
    --dbname="$DATABASE_NAME" \
    --dbuser="$DATABASE_USER" \
    --dbpass="$DATABASE_USER_PASSWORD" \
    --dbhost="mariadb" \
    --dbprefix="wp_" \
    --dbcharset="utf8"

  # Install WordPress core
  wp core install --allow-root \
    --path=/var/www/wordpress \
    --title="Inception" \
    --url="$DOMAIN_NAME" \
    --admin_user="$WP_ROOT_USER" \
    --admin_password="$WP_ROOT_PASSWORD" \
    --admin_email="$WP_ROOT_EMAIL"

  # Create additional user
  wp user create --allow-root \
    --path=/var/www/wordpress \
    "$WP_USER" "$WP_EMAIL" \
    --user_pass="$WP_PASSWORD" \
    --role="author"

  echo "✅ WordPress installed."
else
  echo "ℹ️ wp-config.php already exists, skipping setup."
fi

# Start PHP-FPM in foreground
echo "🚀 Starting php-fpm7.4..."
exec php-fpm7.4 -F


