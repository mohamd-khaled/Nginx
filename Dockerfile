FROM nginx:alpine

WORKDIR /var/www/1_website

COPY 1_website.conf /etc/nginx/conf.d/

COPY index.html /var/www/1_website/

RUN apk add bash

SHELL ["/bin/bash", "-c"]
