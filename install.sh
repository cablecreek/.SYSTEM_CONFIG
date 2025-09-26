#!/bin/bash

DIR=~/.SYSTEM_CONFIG
TEST_MSG="hello from git script"


set -o pipefail

source ~/.SYSTEM_CONFIG/scripts/pre_flight.sh
source ~/.SYSTEM_CONFIG/scripts/packages_base.sh
source ~/.SYSTEM_CONFIG/scripts/packages_post.sh # optional cablecreek installs
source ~/.SYSTEM_CONFIG/scripts/setup.sh
source ~/.SYSTEM_CONFIG/scripts/git.sh 

