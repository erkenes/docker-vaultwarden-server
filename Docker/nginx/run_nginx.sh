#!/bin/sh

set -e
set -u

envsubst '${NGINX_PORT}' < /default.conf.template > /etc/nginx/conf.d/default.conf

nginx -g "daemon off;"