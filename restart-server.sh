#!/bin/bash

docker kill get-mapic-io
docker rm get-mapic-io
docker run -v "$PWD":/entrypoint -w /entrypoint -p 443:8443 -d --name get-mapic-io mapic/get.mapic.io forever app.js 
