#!/bin/bash

# go to folder (cause crontab)
cd /get.mapic.io

# stop server
docker kill get-mapic-io
docker rm get-mapic-io

# create certificates
certbot certonly --standalone --agree-tos --email hello@mapic.io --force-renewal --hsts --non-interactive --domain get.mapic.io

# copy certs
cp /etc/letsencrypt/live/get.mapic.io/privkey.pem .
cp /etc/letsencrypt/live/get.mapic.io/fullchain.pem .

# restart server
docker run -v "$PWD":/entrypoint -w /entrypoint -p 443:8443 -d --name get-mapic-io mapic/get.mapic.io forever app.js
