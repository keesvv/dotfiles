#!/usr/bin/env bash
HOSTNAME=$(hostname)
DEST="file:///mnt/backup/$HOSTNAME"

read -p "Password: " PASSPHRASE
export PASSPHRASE=$PASSPHRASE

duplicity \
    --exclude "**/node_modules" \
    --exclude "**/dynmap" \
    --include "/home/kees/Containers" \
    --include "/home/kees/Documents" \
    --include "/home/kees/Desktop" \
    --include "/home/kees/Music" \
    --include "/home/kees/Projects" \
    --include "/mnt/data/Pictures" \
    --include "/mnt/data/Videos" \
    --include "/mnt/data/Nextcloud" \
    --include "/mnt/data/Minecraft Servers" \
    --include "/mnt/windows/Users/keesv/Documents/Image-Line" \
    --include "/boot" \
    --include "/etc" \
    --exclude "**" \
    --verbosity info \
    --progress \
    / "$DEST"
