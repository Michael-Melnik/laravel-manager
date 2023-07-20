FROM richarvey/nginx-php-fpm:1.9.1

#FROM node:20.3.1-alpine3.17 AS nodejs
#FROM tangramor/nginx-php8-fpm:php8.2.7_withoutNodejs
COPY . .

# Image config
ENV SKIP_COMPOSER 2
ENV WEBROOT /var/www/html/public
ENV PHP_ERRORS_STDERR 1
ENV RUN_SCRIPTS 1
ENV REAL_IP_HEADER 1

# Laravel config
ENV APP_ENV production
ENV APP_DEBUG false
ENV LOG_CHANNEL stderr

# Allow composer to run as root
ENV COMPOSER_ALLOW_SUPERUSER 1

CMD ["/start.sh"]
