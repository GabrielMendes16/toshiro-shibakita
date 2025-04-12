FROM php:7.4-fpm
COPY index.php /var/www/html/
RUN docker-php-ext-install mysqli

# Adicionando configuração do Nginx
FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf
