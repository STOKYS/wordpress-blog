
# INSTALL 
git clone https://github.com/STOKYS/wordpress-blog

cd wordpress-blog

cp env.config .env

nano .env #change what is need password!!!!!!!!

docker-compose build

tar xvfz wordpress.tar.gz -C build/wordpress

cat zaloha.sql | docker exec -i wordpress-docker_db_1 mysql -u root -proot wordpress

docker-compose up -d

docker-compose run --rm wpcli wp core insall --url=*your IP* --title=stocek_wp --admin_user=stocek --admin_password=stocek --admin_email=stocekdavid.net@gmail.com

### Change IP
docker-compose run --rm wpcli wp search-replace *old IP* *new IP* --all-tables
