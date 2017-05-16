FROM debian:jessie

RUN apt-get update && apt-get install -y \
        curl \
        git \
#   next step is to enable php7.0 packages
    && echo "deb http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list \
    && curl -o ./dotdeb.gpg https://www.dotdeb.org/dotdeb.gpg \
    && apt-key add dotdeb.gpg \
    && apt-get update && apt-get install -y \
        php7.0 \
        php7.0-common \
        php7.0-fpm \
        php7.0-cli \
        php7.0-curl \
        php7.0-intl \
        php7.0-json \
        php7.0-mbstring \
        php7.0-mcrypt \
        php7.0-mysql \
        php7.0-opcache \
        php7.0-xml \
        php7.0-zip \
        php7.0-xdebug \
    && curl -o /usr/local/bin/composer https://getcomposer.org/download/1.4.1/composer.phar \
    && chmod +x /usr/local/bin/composer

COPY ./php.ini /etc/php/7.0/fpm/
COPY ./php-fpm.conf /etc/php/7.0/fpm/
COPY ./www.conf /etc/php/7.0/fpm/pool.d/

EXPOSE 9000

CMD ["php-fpm7.0"]