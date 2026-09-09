#!/bin/bash

dnf install -y httpd php php-mysqlnd mariadb105-server wget tar

systemctl enable --now httpd mariadb

mysql -e "CREATE DATABASE wordpress;"
mysql -e "CREATE USER 'wordpress'@'localhost' IDENTIFIED BY 'password';"
mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'localhost';"

cd /var/www/html
wget -q https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz --strip-components=1

cp wp-config-sample.php wp-config.php
sed -i "s/database_name_here/wordpress/; s/username_here/wordpress/; s/password_here/password/" wp-config.php

chown -R apache:apache /var/www/html
