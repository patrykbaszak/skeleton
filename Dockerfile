FROM php:latest

RUN apt update \
    && apt-get update \
    && apt install -y git jq unzip

## install xdebug extension
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

## install opcache extension
# RUN pecl install opcache \
#     && docker-php-ext-enable opcache

## install amqp extension
# RUN apt-get install -y librabbitmq-dev \
#     && pecl install amqp \
#     && docker-php-ext-enable amqp

## install redis extension
# RUN pecl install redis \
#     && docker-php-ext-enable redis

## install composer
RUN php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer

## define app version and store it in environment variable
ADD ./package.json /tmp/app.json
RUN echo "APP_VERSION=$(jq -r '.version' '/tmp/app.json')" >> /etc/environment
RUN echo "APP_COMMIT_SHA=$(cat .git/ORIG_HEAD)" >> /etc/environment
