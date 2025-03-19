FROM php:8.4-fpm-alpine

LABEL mantainer="John Edisson Ortiz"
LABEL email="me@johndev.co"

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

RUN install-php-extensions redis xdebug sockets bcmath pdo pdo_pgsql intl

COPY --from=composer /usr/bin/composer /usr/bin/composer
ENV COMPOSER_ALLOW_SUPERUSER=1

COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

WORKDIR /var/www/html/

USER www-data
ENTRYPOINT ["/usr/local/bin/entrypoint.sh", "php-fpm"]