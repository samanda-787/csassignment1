#!/bin/bash
# Back up your Laravel project and MySQL database.
LOG_FILE="/var/log/backup.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
BACKUP_DIR="/home/ubuntu/backups"
PROJECT_DIR="C:\xampp\htdocs\csassignment1"
DB_NAME="student_api"
DB_USER="root"
DB_PASS=""

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_DIR/api_backup_$(date +%F).tar.gz" "$PROJECT_DIR" && \
  echo "$TIMESTAMP - Laravel project backup successful" >> "$LOG_FILE" || \
  echo "$TIMESTAMP - ERROR: Laravel project backup failed" >> "$LOG_FILE"

mysqldump -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" > "$BACKUP_DIR/db_backup_$(date +%F).sql" && \
  echo "$TIMESTAMP - DB backup successful" >> "$LOG_FILE" || \
  echo "$TIMESTAMP - ERROR: DB backup failed" >> "$LOG_FILE"

# Delete backups older than 7 days
find "$BACKUP_DIR" -type f -mtime +7 -exec rm {} \;
