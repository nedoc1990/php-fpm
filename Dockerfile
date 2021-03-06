FROM alpine:3.6

LABEL maintainer="Vincent Composieux <vincent.composieux@gmail.com>"

RUN apk add --update \
    php7-fpm \
    php7-apcu \
    php7-bcmath \
    php7-bz2 \
    php7-cgi \
    php7-cli \
    php7-zip \
    php7-ctype \
    php7-common \
    php7-curl \
    php7-dom \
    php7-fileinfo \
    php7-gd \
    php7-iconv \
    php7-imagick \
    php7-json \
    php7-imap \
    php7-intl \
    php7-mcrypt \
    php7-mbstring \
    php7-opcache \
    php7-openssl \
    php7-pdo \
    php7-pdo_pgsql \
    php7-xml \
    php7-xmlrpc \
    php7-simplexml \
    php7-zlib \
    php7-phar \
    php7-tokenizer \
    php7-session \
    php7-xsl \
    php7-sockets \
    make \
    curl

RUN rm -rf /var/cache/apk/* && rm -rf /tmp/*

RUN curl --insecure https://getcomposer.org/composer.phar -o /usr/bin/composer && chmod +x /usr/bin/composer
