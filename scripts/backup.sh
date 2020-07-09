#!/usr/bin/env bash
TARGET="/mnt/backup"

rsync -avzP --delete --delete-excluded --stats \
    --exclude "**/.*" \
    --exclude "**/node_modules" \
    --exclude "Source" \
    --exclude "Backups" \
    --exclude "Containers" \
    --exclude "Documents/Virtual Machines" \
    /home/kees "$TARGET"

