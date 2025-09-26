#!/bin/bash

DIR=~/.SYSTEM_CONFIG/packages/

sudo pacman -S --noconfirm --needed $(grep -v '^#' "$DIR/base_ui.packages" | grep -v '^$')
sudo pacman -S --noconfirm --needed $(grep -v '^#' "$DIR/base_languages.packages" | grep -v '^$')
sudo pacman -S --noconfirm --needed $(grep -v '^#' "$DIR/base_utils.packages" | grep -v '^$')

