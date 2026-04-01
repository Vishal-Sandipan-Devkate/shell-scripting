#!/usr/bin/env` bash

# Author: Vishal Devkate
# Dis: Utiliteis of applicaton

log() {
	echo "$date '+%Y-%m-%d %H:%M:%S') : $1" >> $LOG_FILE
}

error_exit() {
	log "ERROR: $1"
	echo "$1"
	exit 1
}

