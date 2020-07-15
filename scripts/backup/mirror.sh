#!/usr/bin/env bash
source ./vars.sh

rsync "${RSYNC_ARGS[@]}" /mnt/backup/ /mnt/backup-mirror
