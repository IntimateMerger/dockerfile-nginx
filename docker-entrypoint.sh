#!/bin/sh

set -e

envsubst '$$CLIENT_MAX_BODY$$UPSTREAM' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

exec "$@"