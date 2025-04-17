#!/bin/bash

LOG_FILE="/var/log/server_health.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
MEM=$(free -m | awk '/Mem/ { printf("%.2f"), $3/$2*100 }')
DISK=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')
NGINX_STATUS=$(systemctl is-active apache2)

API_STUDENTS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:8000/students)
API_SUBJECTS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:8000/subjects)

{
  echo "$TIMESTAMP - CPU: $CPU% | MEM: $MEM% | DISK: $DISK%"
  echo "$TIMESTAMP - Apache status: $NGINX_STATUS"
  echo "$TIMESTAMP - /students: $API_STUDENTS | /subjects: $API_SUBJECTS"

  [ "$DISK" -gt 90 ] && echo "$TIMESTAMP - WARNING: Disk usage above 90%"
  [ "$API_STUDENTS" -ne 200 ] && echo "$TIMESTAMP - WARNING: /students API failed!"
  [ "$API_SUBJECTS" -ne 200 ] && echo "$TIMESTAMP - WARNING: /subjects API failed!"
} >> "$LOG_FILE"