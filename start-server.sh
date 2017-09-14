#!/bin/bash
docker kill get-mapic-io > /dev/null
docker rm get-mapic-io > /dev/null
docker run -v "$PWD":/entrypoint -w /entrypoint -p 443:8443 -d --name get-mapic-io mapic/get.mapic.io forever app.js 
