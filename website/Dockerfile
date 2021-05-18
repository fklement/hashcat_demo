FROM php:5.5-apache 

LABEL maintainer "Felix Klement <fk@sec.uni-passau.de>"

RUN chmod 777 /var/www/html
RUN docker-php-ext-install mysql mysqli pdo pdo_mysql

VOLUME ["/var/www/html"]
