#!/bin/bash

mkdir -p /etc/nginx/ssl

openssl ecparam -name prime256v1 -genkey -noout \
    -out /etc/nginx/ssl/inception.key

openssl req -x509 -nodes -days 365 \
    -key /etc/nginx/ssl/inception.key \
    -out /etc/nginx/ssl/inception.crt \
    -subj "/CN=jait-chd.42.fr"

exec nginx -g "daemon off;"
