#!/bin/bash

clear

echo "================================"
echo "          DISK MONITOR"
echo "================================"
echo 

total_disk=$(df -h / | tail -n 1 | awk '{print $2}')
used_disk=$(df -h / | tail -n 1 | awk '{print $3}')
free_disk=$(df -h / | tail -n 1 | awk '{print $4}')
usage_percent=$(df -h / | tail -n 1 | awk '{print $5}')

usage_num=$(echo "$usage_percent" | tr -d '%')

echo "Total Disk      : $total_disk"
echo "Used Disk       : $used_disk"
echo "Free Disk       : $free_disk"
echo "Disk Usage      : $usage_percent"

if [ "$usage_num" -gt 80 ]
then
    echo
    echo "WARNING: Disk usage above 80%!"
fi

echo

echo
read -p "Press Enter to return..."