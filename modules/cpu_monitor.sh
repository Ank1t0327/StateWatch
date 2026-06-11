#!/bin/bash

clear

echo "================================"
echo "          CPU MONITOR"
echo "================================"
echo 

cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}')

load_avg=$(uptime | awk -F'load average:' '{print $2}')

cores=$(nproc)

echo "CPU Usage     : $cpu_usage %"
echo "Load Average  : $load_avg"
echo "CPU CORES     : $cores"

echo 
read -p "Press Enter to return..."