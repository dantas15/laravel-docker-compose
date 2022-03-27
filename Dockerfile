FROM php:8.0-fpm

RUN docker-php-ext-install pdo pdo_mysql && chown -R www-data:www-data .