#!/bin/bash

CUR_DIR=$(pwd)

cd $(mktemp -d) || exit
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm

cd $CUR_DIR || exit
