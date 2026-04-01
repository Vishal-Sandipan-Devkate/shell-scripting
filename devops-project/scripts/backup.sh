#!/usr/bin/env bash

# Author: Vishal Devkate
# Discription: Backup Sripts

source ./config.env
source ./scripts/utils.sh

mkdir -p $BACKUP_DIR

FILE_NAME="backup_$(date +%F_%H-%M-%S).tar.gz"

tar -czf $BACKUP_DIR/$FILE_NAME $SOURCE_DIR || error_exit "Backup failed"

log "Backup created: $FILE_NAME"

echo "Backup successful"
