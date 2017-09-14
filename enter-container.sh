#!/bin/bash
docker run -it -p 443:8443 -v /get.mapic.io/:/entrypoint -w /entrypoint node bash
