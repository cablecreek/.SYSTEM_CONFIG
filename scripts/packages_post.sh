#!/bin/bash

DIR=~/.SYSTEM_CONFIG/packages/

yay -S --noconfirm --needed $(grep -v '^#' "$DIR/post.packages" | grep -v '^$')

