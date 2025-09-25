#!/bin/bash

DIR=~/.SYSTEM_CONFIG

mkdir -p $DIR/tmp
rm -rf $DIR/tmp/*
cd $DIR/tmp/

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --clean --cleanbuild --noconfirm

