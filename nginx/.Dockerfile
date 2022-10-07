FROM nginx:1.21.3-alpine

COPY ./conf.d/api.conf /etc/nginx/conf.d
COPY ./conf.d/dashboard.conf /etc/nginx/conf.d
COPY ./conf.d/home.conf /etc/nginx/conf.d
COPY ./conf.d/payment.conf /etc/nginx/conf.d

WORKDIR /app