#!/usr/bin/env bash
source ./vars.sh

HOSTNAME=$(hostname)
DEST="/mnt/backup/$HOSTNAME"

rsync "${RSYNC_ARGS[@]}" \
    --exclude "**/.*" \
    --exclude "**/node_modules" \
    /home/kees/ "$DEST/Home"

rsync "${RSYNC_ARGS[@]}" /mnt/server/Pictures "$DEST"
rsync "${RSYNC_ARGS[@]}" /mnt/server/Videos "$DEST"

cp -avfT ~/.ssh "$DEST/ssh"
cp -avfT ~/.gnupg "$DEST/gnupg"
