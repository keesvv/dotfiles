#!/usr/bin/env bash
source ./vars.sh

HOSTNAME=$(hostname)
DEST="/mnt/backup/$HOSTNAME"

ecryptfs-mount-private

rsync $(RSYNC_ARGS) \
    --exclude "**/node_modules" \
    --exclude "**/dynmap" \
    --include "/home/kees/Private" \
    --include "/mnt/shared" \
    --include "/mnt/hdd/Archive" \
    --include "/mnt/hdd/Plex" \
    --include "/mnt/hdd/Pictures" \
    --include "/mnt/hdd/Videos" \
    --include "/usr/share/fonts" \
    --include "/boot" \
    --include "/etc" \
    --exclude "**" \
    --verbosity info \
    --progress \
    / "$DEST"
