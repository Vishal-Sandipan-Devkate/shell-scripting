#!/usr/bin/env bash

# Author:- Vishal Devkate
# Description:- Modular script for backup

set -euo pipefail

SOURCE="/home/vishaldevkate/Documents"
DEST="/home/vishaldevkate/backup"
LOG_FILES="$DEST/backup.log"

log() {
	echo "[$(date '+%Y-%m-%d-%H:%M:%S')] $1" | tee -a "$LOG_FILES"
}

check_source() {
	if [ ! -d "$SOURCE" ]
	then
		log " Source directory not found"
		exit 1
	fi
}

create_backup() {
	DATE=$(date +%Y-%m-%d_%H-%M-%S)
	FILE="$DEST/backup_$DATE.tar.gz"

	tar -czf "$FILE" "$SOURCE"
	log "Backup created : $FILE"
}

cleanup_old_backups() {
	cd "$DEST" || exit

	old_files=$(ls -t | tail -n +6)

	for file in $old_files
	do
		rm -v "$file"
		log "Removed old backup: $file"
	done
}

main() {
	mkdir -p "$DEST"
	
	log "Backup process started"

	check_source
	create_backup
	cleanup_old_backups

	log "Backup process completed"
}

main

