FROM node:23-alpine3.21

LABEL maintainer="John Edisson Ortiz"
LABEL email="me@johndev.co"

COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

WORKDIR /var/www/html

RUN apk update && apk add pnpm

ENTRYPOINT ["/usr/local/bin/entrypoint.sh", "pnpm", "run", "dev", "--host", "0.0.0.0"]