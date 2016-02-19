if [ ! -d "public/wp/wp-admin" ]; then
	echo 'Installing WordPress (release version) in wpstarter/public...'
	if [ ! -d "./public ]; then
		mkdir ./public
	fi
	cd ./public
	wp core download --allow-root 
	wp core config --dbname="wpstarter" --dbuser=wp --dbpass=wp --dbhost="localhost" --allow-root --extra-php <<PHP
define('WP_DEBUG', true);
define('WP_DEBUG_LOG', true);
PHP
	wp core install --url=wpstarter.dev --title="wpstarter" --admin_user=admin --admin_password=password --admin_email=admin@localhost.dev --allow-root
	
	
  
	
	cd -

fi
