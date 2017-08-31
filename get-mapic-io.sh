#!/bin/bash
# 
# This script is for quick & easy install via:
#   'curl -sSL https://get.mapic.io/ | sh'
# or:
#   'wget -qO- https://get.mapic.io/ | sh'
#
# #
# todo: 
# - ubuntu/osx/windows compatibility.
# - use wget/unzip instead of git?

# clone mapic repository
echo "Downloading Mapic..."
git clone https://github.com/mapic/mapic.git

# install mapic-cli
echo "Installing Mapic..."
cd mapic/cli 
sudo bash mapic-cli.sh
