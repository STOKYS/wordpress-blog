
# INSTALL 
git clone https://github.com/STOKYS/wordpress-blog

cd wordpress-blog

docker-compose build

docker-compose up -d

sudo chmod -R 777 /build

tar xvfz wordpress.tar.gz -C build/wordpress

cat zaloha.sql | docker exec -i wordpress-docker-db-1 mysql -u root -proot wordpress

docker-compose run --rm wpcli wp core install --url=*your IP* --title=stocek_wp --admin_user=stocek --admin_password=stocek --admin_email=stocekdavid.net@gmail.com

### Change IP
docker-compose run --rm wpcli wp search-replace *old IP* *new IP* --all-tables

### After instalation
***IMPORTANT!!***
You need to download a theme called "GeneratePress" for it to work
