#/bin/bash

chown -R www-data:www-data /var/www/html/

chown -R www-data:www-data /var/www/html/*

exec "$@" # Array of args inside CMD