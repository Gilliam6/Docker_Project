#!/bin/bash
if [ ! -f /var/www/html/rstephan.42.fr/wp-config.php ]
then
	wp config create --allow-root --path=$WWW_PATH \
		--dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASS --dbhost=$DB_HOST

	cd $WWW_PATH
	wp core install --allow-root \
		--url=$DOMAIN_NAME \
		--title=$PROJECT \
		--admin_user=$WP_ADMIN \
		--admin_password=$WP_ADMPASS \
		--admin_email=$WP_ADMEMAIL
	
	wp user create --allow-root $WP_USER $WP_USMAIL --user_pass=$WP_USPASS --role=author

	chmod -R 0777 /var/www/html/rstephan.42.fr/wp-content
	chmod -R 0777 /var/www/html/rstephan.42.fr/wp-admin
	wp plugin install --allow-root redis-cache --activate
	wp redis enable --allow-root
	wp config --allow-root set WP_REDIS_HOST $WP_REDIS_HOST
	wp config --allow-root set WP_REDIS_PORT $WP_REDIS_PORT
	wp config --allow-root set WP_REDIS_DATABASE $WP_REDIS_DB
	wp config --allow-root set WP_REDIS_TIMEOUT $WP_REDIS_TO
	wp config --allow-root set WP_REDIS_READ_TIMEOUT $WP_REDIS_R_TO
fi
/usr/sbin/php-fpm7.3 -F
