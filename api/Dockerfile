FROM php:8.4-fpm-alpine

LABEL mantainer="John Edisson Ortiz"
LABEL email="me@johndev.co"

ARG API_PATH

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/
COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN install-php-extensions redis xdebug sockets bcmath pdo pdo_pgsql intl pcntl

COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

RUN apk add --no-cache httpie

WORKDIR /var/www/html/

USER www-data
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["php-fpm"]