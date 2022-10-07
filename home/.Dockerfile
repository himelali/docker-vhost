FROM webdevops/php-nginx:8.1-alpine

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

ENV WEB_DOCUMENT_ROOT /app
ENV APP_ENV local
WORKDIR /app
COPY . .
