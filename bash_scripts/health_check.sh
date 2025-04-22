#!/bin/bash

LOG_FILE="/var/log/server_health.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

# System stats
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
MEM=$(free -m | awk '/Mem/ { printf("%.2f", $3/$2*100) }')
DISK=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

# Correct Nginx status check
NGINX_STATUS=$(systemctl is-active nginx)

# API status codes
API_STUDENTS=$(curl -s -o /dev/null -w "%{http_code}" http://ec2-16-170-217-124.eu-north-1.compute.amazonaws.com/students)
API_SUBJECTS=$(curl -s -o /dev/null -w "%{http_code}" http://ec2-16-170-217-124.eu-north-1.compute.amazonaws.com/subjects)

# Log results
{
  echo "$TIMESTAMP - CPU: $CPU% | MEM: $MEM% | DISK: $DISK%"
  echo "$TIMESTAMP - Nginx status: $NGINX_STATUS"
  echo "$TIMESTAMP - /students: $API_STUDENTS | /subjects: $API_SUBJECTS"

  [ "$DISK" -gt 90 ] && echo "$TIMESTAMP - WARNING: Disk usage above 90%"
  [ "$API_STUDENTS" -ne 200 ] && echo "$TIMESTAMP - WARNING: /students API failed!"
  [ "$API_SUBJECTS" -ne 200 ] && echo "$TIMESTAMP - WARNING: /subjects API failed!"
} >> "$LOG_FILE"
