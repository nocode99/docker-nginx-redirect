#! /bin/sh

envsubst '\$REDIRECT_URL' < /tmp/default.template > /etc/nginx/conf.d/default.conf

nginx -g 'daemon off;'
