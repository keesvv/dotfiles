#!/usr/bin/env bash
HOSTNAME=$(hostname)
DEST="/mnt/backup/$HOSTNAME"
RSYNC_ARGS=(-avzP --delete --delete-excluded --stats --no-links)

rsync "${RSYNC_ARGS[@]}" \
    --exclude "**/.*" \
    --exclude "**/node_modules" \
    /home/kees "$DEST/Home"

rsync "${RSYNC_ARGS[@]}" /mnt/server/Pictures "$DEST"
rsync "${RSYNC_ARGS[@]}" /mnt/server/Videos "$DEST"

cp -avfT ~/.ssh "$DEST/ssh"
cp -avfT ~/.gnupg "$DEST/gnupg"
