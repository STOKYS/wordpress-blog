FROM wordpress:5-php7.4-fpm
RUN apt-get -y update && apt-get install -y libicu-dev && docker-php-ext-configure intl && docker-php-ext-install intl
#RUN pecl install xdebug-2.9.8 && docker-php-ext-enable xdebug
#RUN apt update && apt upgrade
# RUN usermod -u 1000 www-data && groupmod -o -g 1000 www-data
