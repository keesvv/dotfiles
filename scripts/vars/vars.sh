#!/usr/bin/env bash
cd ~/.dotfiles/scripts/vars

if [ $(cat /etc/hostname) = 'pc' ]; then
    source ./vars-desktop
else
    source ./vars-laptop
fi

cd ~
