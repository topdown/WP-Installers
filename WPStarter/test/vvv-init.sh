if [ ! -d "htdocs/wp-admin" ]; then
	echo 'Installing WordPress (release version) in test/htdocs...'
	if [ ! -d "./htdocs" ]; then
		mkdir ./htdocs
	fi
	cd ./htdocs
	wp core download --allow-root 
	wp core config --dbname="test" --dbuser=wp --dbpass=wp --dbhost="localhost" --allow-root
	wp core install --url=test.dev --title="test" --admin_user=admin --admin_password=password --admin_email=admin@localhost.dev --allow-root
	
	
  
	
	cd -

fi
