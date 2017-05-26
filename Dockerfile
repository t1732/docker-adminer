FROM php:7.1.5-alpine
MAINTAINER motopig <x@motopig.me>
RUN docker-php-ext-install pdo_mysql mysqli

WORKDIR /var/www
RUN curl  --connect-timeout 120 -m 120 -o  /var/www/index.php http://www.adminer.org/static/download/4.3.1/adminer-4.3.1.php
RUN curl --connect-timeout 120 -m 120 -o /var/www/adminer.css https://raw.githubusercontent.com/vrana/adminer/master/designs/lucas-sandery/adminer.css

EXPOSE 80
