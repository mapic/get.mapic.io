#!/bin/bash
# 
# This script is meant for quick & easy install via:
#   'wget -qO- https://get.mapic.io/ | sh'
# or:
#   'curl -sSL https://get.mapic.io/ | sh'
#
# #

# todo: ubuntu/osx/windows compatibility.
# use wget/unzip instead of git?

if [ $TRAVIS = "true" ]; then
    git clone https://github.com/mapic/mapic.git
else    
    git clone git@github.com:mapic/mapic.git
fi

# install mapic-cli
cd mapic/cli 
sudo bash mapic-cli.sh