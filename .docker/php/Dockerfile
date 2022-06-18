FROM php:8.1-fpm

RUN apt-get update && \
    apt-get -y install --no-install-recommends curl gnupg gnupg2 git wget curl libpng-dev libjpeg62-turbo-dev net-tools \
    libssl-dev libcurl4-openssl-dev pkg-config libxml2-dev zlib1g-dev \
    libpq-dev openssh-client rsync libzip-dev libfreetype6-dev libonig-dev

RUN docker-php-ext-install bcmath curl xml mbstring zip pgsql pdo pdo_pgsql intl gd

# Install xdebug
RUN pecl install xdebug
RUN echo "xdebug.mode=debug,coverage\n" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
    "xdebug.start_with_request=yes\n" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
    "xdebug.discover_client_host=1\n" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
    "xdebug.client_host=\"host.docker.internal\"\n" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
RUN docker-php-ext-enable xdebug

# Install composer
RUN curl -sS https://getcomposer.org/installer -o composer-setup.php \
    && php composer-setup.php --install-dir=/usr/local/bin --filename=composer

# Install infection
RUN wget https://github.com/infection/infection/releases/download/0.26.10/infection.phar \
    && chmod +x infection.phar \
    && mv infection.phar /usr/local/bin/infection