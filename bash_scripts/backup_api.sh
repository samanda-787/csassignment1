#!/bin/bash

# Back up your Laravel project and SQLite database from the server.
LOG_FILE="$HOME/backup.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
BACKUP_DIR="/home/ubuntu/backups"
PROJECT_DIR="/home/ubuntu/csassignment1"  # or wherever your Laravel project lives
DB_FILE="$PROJECT_DIR/database/database.sqlite"

mkdir -p "$BACKUP_DIR"

# Backup Laravel project (tar the project directory)
tar -czf "$BACKUP_DIR/api_backup_$(date +%F).tar.gz" "$PROJECT_DIR" && \
  echo "$TIMESTAMP - Laravel project backup successful" >> "$LOG_FILE" || \
  echo "$TIMESTAMP - ERROR: Laravel project backup failed" >> "$LOG_FILE"

# Backup SQLite database (copy the database file)
cp "$DB_FILE" "$BACKUP_DIR/db_backup_$(date +%F).sqlite" && \
  echo "$TIMESTAMP - SQLite DB backup successful" >> "$LOG_FILE" || \
  echo "$TIMESTAMP - ERROR: SQLite DB backup failed" >> "$LOG_FILE"

# Delete backups older than 7 days
find "$BACKUP_DIR" -type f -mtime +7 -exec rm {} \;
