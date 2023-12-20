FROM php:8.1.1-fpm-alpine3.15

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

# Install database driver (enable acces from PHP to MYSQL database)
RUN docker-php-ext-install pdo pdo_mysql mysqli

# Install PHP Intl (required by filament)
RUN apk add icu-dev
RUN docker-php-ext-configure intl && docker-php-ext-install intl
