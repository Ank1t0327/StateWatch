#!/bin/bash
echo "Hello, World" 
echo "My first health monitor"

HOSTNAME="my-server"
CPU_THRESHOLD="90"
echo "Server: $HOSTNAME"
echo "Alert if CPU goes above: $CPU_THRESHOLD%"
ADMIN_EMAIL="abcd@gmail.com"
echo "Reports will be sent to: $ADMIN_EMAIL"



CURRENT_DATE=$(date)
UPTIME=$(uptime -p)
DISK_USED=$(df -h / | awk 'NR==2 {print $5}')
RAM_USED=$(free -m | awk 'NR==2 {print $3}')
echo "$DISK_USED"
echo "$RAM_USED"

USERS=$(who | wc -l)
echo "$USERS"