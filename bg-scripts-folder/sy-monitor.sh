#!/usr/bin/env bash

# Author : Vishal Devkate
# Description : System Monitoring Script which monitor CPU usage, Memory usage, Disk usage

echo "========SYSTEM MONITORING========="

echo "Date: $(date)"
echo ""

echo "CPU Usage:"
top -bn1 | grep "Cpu"

echo " "

echo "Memory Usage:"
free -h
echo ""

echo" Disk Usage:"
df -h

