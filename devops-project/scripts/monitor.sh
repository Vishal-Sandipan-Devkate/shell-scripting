#!/usr/bin/env bash

# Author: Vishal Devkate
# Dis: Monitoring of system
#
source ./config.env
source ./scripts/utils.sh

log "Running system monitoring"

echo " System Status"
echo "CPU Load:"
uptime

echo "Memory:"
free -h

echo "Disk:"
df -h
