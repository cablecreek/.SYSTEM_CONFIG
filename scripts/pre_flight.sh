#!/bin/bash

SYSTEM_DIR=~/.SYSTEM_CONFIG
USER_DIR=~/.USER_CONFIG

mkdir -p $USER_DIR

mkdir -p $SYSTEM_DIR/tmp
rm -rf $SYSTEM_DIR/tmp/*
cd $SYSTEM_DIR/tmp/

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --clean --cleanbuild --noconfirm

