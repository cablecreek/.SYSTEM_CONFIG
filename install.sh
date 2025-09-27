#!/bin/bash

DIR=~/.SYSTEM_CONFIG
USER_DIR=~/.USER_CONFIG

echo "the following will be used to configure git"

read -p "email: " EMAIL 
read -p "full name: " FULL_NAME

set -o pipefail

source ~/.SYSTEM_CONFIG/scripts/pre_flight.sh
source ~/.SYSTEM_CONFIG/scripts/packages_base.sh
source ~/.SYSTEM_CONFIG/scripts/packages_post.sh # optional cablecreek installs
source ~/.SYSTEM_CONFIG/scripts/setup.sh
source ~/.SYSTEM_CONFIG/scripts/git.sh 
