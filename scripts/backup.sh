#!/usr/bin/env bash
TARGET="/media/kees/Linux Backup"

rsync -avzP --delete --delete-excluded --stats \
    --exclude "**/.*" \
    --exclude "**/node_modules" \
    --exclude "Source" \
    --exclude "Documents/Virtual Machines" \
    /home/kees "$TARGET"

