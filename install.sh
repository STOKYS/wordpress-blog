#!/bin/bash

echo Set yout WP title:
read setTitle

echo Set your admin username: 
read setUname

echo Set your email:
read setMail

echo Set your password:
read setPass

echo $setTitle $setUname $setPass

docker-compose build

docker-compose up -d

sudo chmod -R 777 build

tar xvfz wordpress.tar.gz -C build/wordpress

db=`docker ps | grep mariadb | awk {'print $11'}`

cat zaloha.sql | docker exec -i wordpress-blog-db-1 mysql -u root -proot wordpress

ip=`ip addr | grep 192.168 | awk '{print $2}' | cut -d'/' -f 1`

docker-compose run --rm wpcli wp core install --url=$ip --title=$setTitle --admin_user=$setUname --admin_password=$setPass --admin_email=$setMail

firefox --new-window http://$ip/wp-admin
