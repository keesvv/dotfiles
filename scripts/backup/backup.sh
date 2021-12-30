#!/bin/bash
source ./vars.sh

DEST="/mnt/backup/$(hostname)"

rsync "${RSYNC_ARGS[@]}" \
	--include-from="include.txt" \
	/mnt/shared/ $DEST/shared

rsync "${RSYNC_ARGS[@]}" \
	--include-from="include.txt" \
	--include="/Archive" \
	--include="/Videos" \
	--include="/Pictures" \
	--exclude="/*" \
	/mnt/hdd/ $DEST/hdd
