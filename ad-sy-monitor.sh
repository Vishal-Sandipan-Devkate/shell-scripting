#!/usr/bin/env bash

echo "=========SYSTEM MONITORING========"

echo "CPU Load:"
top -bn1 | grep "Cpu" | awk '{print $2 + $4 "%"}'
echo ""

echo "Memory Usage:"
free -h | awk '/Mem/ {print $3 "/" $2}'
echo ""

echo "Disk Usage:"
df -h / | awk 'NR==2 {print $3 "/" $2}'
