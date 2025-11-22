FROM php:5.6-apache


RUN docker-php-ext-install mysqli

RUN a2enmod rewrite

COPY . /var/www/html/

RUN mkdir -p /var/www/html/upload \
    && chmod -R 777 /var/www/html/upload

EXPOSE 80
