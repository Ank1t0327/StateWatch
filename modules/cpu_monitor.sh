#!/bin/bash

clear

echo "================================"
echo "          CPU MONITOR"
echo "================================"
echo 


current_user=$(whoami)
hostname=$(hostname)
kernal_version=$(uname -r)

cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}')

load_avg=$(uptime | awk -F'load average:' '{print $2}')

cores=$(nproc)                               #. nproc is a command that returns the number of processing units available, which is typically the number of CPU cores.
                                             #. This is called Command Substitution. ex. date_now=$(date)


echo "Current User       : $current_user"
echo "Hostname           : $hostname"
echo "Kernal Version     : $kernal_version"

echo "CPU Usage          : $cpu_usage %"
echo "Load Average       : $load_avg"
echo "CPU CORES          : $cores"

top_process=$(ps -eo comm,%cpu --sort=-%cpu | grep -v "^ps" | sed -n '2p' | awk '{print $1}')
echo
echo "Top CPU Process    : $top_process"

echo 
read -p "Press Enter to return..."