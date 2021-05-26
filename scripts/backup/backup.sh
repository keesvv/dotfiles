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
    --include "/home/kees/Music" \
    --include "/home/kees/Projects" \
    --include "/mnt/hdd/Pictures" \
    --include "/mnt/hdd/Videos" \
    --include "/mnt/hdd/Nextcloud" \
    --include "/mnt/hdd/Minecraft Servers" \
    --include "/boot" \
    --include "/etc" \
    --exclude "**" \
    --verbosity info \
    --progress \
    / "$DEST"
