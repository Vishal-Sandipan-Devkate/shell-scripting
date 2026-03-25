#!/usr/bin/env bash

# Author:- Vishal Devkate
# Description:- the script for cpu warning usage


echo "=========SYSTEM MONITORING========"

echo "CPU Load:"
cpu_usage=$(top -bn1 | grep "Cpu" | awk '{print 100 - $8}')
echo ""

cpu_int=${cpu_usage%.*}

echo "$cpu_int%"

if [ "$cpu_int" -gt 70 ]
then
	echo "High CPU Usage"
fi
echo ""

echo "Memory Usage:"
free -h | awk '/Mem/ {print $3 "/" $2}'
echo ""

echo "Disk Usage:"
df -h / | awk 'NR==2 {print $3 "/" $2}'
