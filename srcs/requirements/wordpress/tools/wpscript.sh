#!/bin/bash
# cat /var/www/html/.s 2> /dev/null
# if [ $? -ne 0 ];
# then
wp core config --dbname=$DB_NAME --dbuser=$WP_USER --dbhost=db --dbpass=$DB_PASSWORD --allow-root
wp core install --url=10.12.177.229 --title="wordpress" --admin_user="$WP_USER" --admin_password="$WP_PASSWORD" --admin_email="$WP_EMAIL" --allow-root
php-fpm7.3 --nodaemonize
touch /var/www/html/.s
# fi
