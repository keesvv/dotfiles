#!/usr/bin/env bash
HOSTNAME=$(hostname)
DEST="file:///mnt/backup/$HOSTNAME"

read -p "Password: " PASSPHRASE
export PASSPHRASE=$PASSPHRASE

duplicity \
    --exclude "/home/kees/.cache" \
    --exclude "/home/kees/.vscode*" \
    --exclude "**/node_modules" \
    --exclude "**/dynmap" \
    --include "/home/kees" \
    --include "/mnt/data/Pictures" \
    --include "/mnt/data/Videos" \
    --include "/mnt/data/Public" \
    --include "/boot" \
    --include "/etc" \
    --exclude "**" \
    --verbosity info \
    --progress \
    / "$DEST"
