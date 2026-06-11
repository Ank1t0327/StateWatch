#!/bin/bash

clear

echo "================================"
echo "         MEMORY MONITOR"
echo "================================"
echo 

total_ram=$(free -h | awk '/Mem:/ {print $2}')
used_ram=$(free -h | awk '/Mem:/ {print $3}')
free_ram=$(free -h | awk '/Mem:/ {print $4}')
avi_ram=$(free -h | awk '/Mem:/ {print $7}')

echo "Total RAM       : $total_ram"
echo "Used RAM        : $used_ram"
echo "Free RAM        : $free_ram"
echo "Available RAM   : $avi_ram"
echo

echo
read -p "Press Enter to return..."