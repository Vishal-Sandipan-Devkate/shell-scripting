#!/usr/bin/env bash

# Author:- Vishal Devkate
# Description:- Script for Systm monitoring and to warn in unfair conditions


echo "=========SYSTEM MONITORING========"

echo "CPU Load:"
cpu_usage=$(top -bn1 | grep "Cpu" | awk '{print 100 - $8}')
echo ""

cpu_int=${cpu_usage%.*} # FLOAT to INT conversion

echo "$cpu_int%"

if [ "$cpu_int" -gt 70 ]
then
	echo "High CPU Usage"
fi
echo ""

echo "Memory Usage:"
free -h | awk '/Mem/ {print $3 "/" $2 }'
mem_usage=$(free -h | awk '/Mem/ {print ($3/$2)*100}')
mem_int=${mem_usage%.*}  # FLOAT to INT Conversion
if [ "$mem_int" -gt 80 ]
then
	echo "High Memory Usage"
fi

echo "Disk Usage:"
df -h / | awk 'NR==2 {print $3 "/" $2}'
disk_usage=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//') # Data cleaning removing %
if [ "$disk_usage" -gt 90 ]
then
	echo " Disk usage almost full"
fi
