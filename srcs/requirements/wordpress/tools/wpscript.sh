#!/bin/bash
cd /var/www/html
sed -i "s|listen = /run/php/php8.2-fpm.sock|listen = 0.0.0.0:9000|g" /etc/php/8.2/fpm/pool.d/www.conf
wp core download --allow-root
wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_USER_PASSWORD --dbhost=mariadb:3306 --allow-root --skip-check
wp core install --url=https://abenmous.42.fr --title="HELLO" --admin_user=$DB_USER --admin_password=$DB_USER_PASSWORD --admin_email=$MAIL --allow-root
wp user create $WP_USER $WP_MAIL --role=author --user_pass=$WP_USER_PASS --allow-root
chmod -R 777 ./wp-content

exec $@
