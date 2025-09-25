#!/bin/bash

DIR=~/.SYSTEM_CONFIG

set -o pipefail

source ~/.SYSTEM_CONFIG/scripts/pre_flight.sh
source ~/.SYSTEM_CONFIG/scripts/packages.sh
source ~/.SYSTEM_CONFIG/scripts/setup.sh
