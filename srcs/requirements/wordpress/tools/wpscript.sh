wp core is-installed --allow-root
if [ $? -eq 0 ]
then
wp core download --allow-root
fi
wp core config --dbname=$DB_NAME --dbuser=$WP_USER --dbhost=db --dbpass=$DB_PASSWORD --allow-root 2> /dev/null
wp core install --url=aaitbelh.42.fr --title="wordpress" --admin_user="$WP_USER" --admin_password="$WP_PASSWORD" --admin_email="$WP_EMAIL" --allow-root 2> /dev/null
php-fpm7.3 --nodaemonize