FROM php:7.4-fpm

RUN apt-get update && apt-get install -y \
    libpng-dev \
    zlib1g-dev \
    libxml2-dev \
    libzip-dev \
    zip \
    curl \
    unzip
RUN docker-php-ext-install pdo pdo_mysql
RUN docker-php-ext-install zip
RUN docker-php-ext-configure gd

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www/html
COPY ./src/composer.json ./src/composer.lock* ./
#RUN curl -L 'https://raw.githubusercontent.com/laravel/laravel/v4.2.11/artisan' > artisan
#RUN php artisan key:generate

# RUN docker-php-ext-install mbstring
# RUN apt-get update && apt-get install php-xml zip unzip curl mailutils
# RUN chown -R www-data:www-data *
# RUN php artisan key:generate
