FROM debian:jessie

RUN apt-get update && apt-get install -y \
        curl \
        git \
#   next steps are to enable php7.1 packages
        apt-transport-https \
        lsb-release \
        ca-certificates \
    && curl -o /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg \
    && echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list \
    && apt-get update && apt-get install -y \
        php7.1 \
        php7.1-common \
        php7.1-fpm \
        php7.1-cli \
        php7.1-curl \
        php7.1-intl \
        php7.1-json \
        php7.1-mbstring \
        php7.1-mcrypt \
        php7.1-mysql \
        php7.1-opcache \
        php7.1-xml \
        php7.1-zip \
        php7.1-xdebug \
    && mkdir /run/php \
    && curl -o /usr/local/bin/composer https://getcomposer.org/download/1.4.2/composer.phar \
    && chmod +x /usr/local/bin/composer

COPY ./php.ini /etc/php/7.1/fpm/
COPY ./php-fpm.conf /etc/php/7.1/fpm/
COPY ./www.conf /etc/php/7.1/fpm/pool.d/

EXPOSE 9000

CMD ["php-fpm7.1"]