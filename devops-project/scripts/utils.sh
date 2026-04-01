#!/usr/bin/env bash

# Author: Vishal Devkate
# Dis: Utiliteis of applicaton

log() {
	local timestamp
	timestamp=$(date '+%Y-%m-%d %H:%M:%S')
	mkdir -p "$(dirname "$LOG_FILE")"
	echo "$timestamp : $1" >> "$LOG_FILE"
}

error_exit() {
	log "ERROR: $1"
	echo "$1"
	exit 1
}

