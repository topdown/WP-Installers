if [ ! -d "htdocs/wp/wp-admin" ]; then
	echo 'Installing WordPress (release version) in wpstarter2/htdocs...'
	if [ ! -d "./htdocs" ]; then
		mkdir ./htdocs
	fi
	cd ./htdocs
	wp core download --allow-root 
	wp core config --dbname="wpstarter2" --dbuser=wp --dbpass=wp --dbhost="localhost" --allow-root
	wp core install --url=wpstarter2.dev --title="wpstarter2" --admin_user=admin --admin_password=password --admin_email=admin@localhost.dev --allow-root
	
	
  
	
	cd -

fi
