#!/usr/bin/env bash
HOSTNAME=$(hostname)
DEST="/mnt/backup/$HOSTNAME"
RSYNC_ARGS=(-avzP --delete --delete-excluded --stats --no-links)

rsync "${RSYNC_ARGS[@]}" \
    --exclude "**/.*" \
    --exclude "**/node_modules" \
    --exclude "Source" \
    --exclude "Containers" \
    --exclude "Documents/Virtual Machines" \
    /home/kees "$DEST"
