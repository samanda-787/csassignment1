#!/bin/bash

LOG_FILE="/var/log/update.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
PROJECT_DIR="/home/ubuntu/csassignment1"

{
  echo "$TIMESTAMP - Updating system..."
  apt update && apt upgrade -y && echo "$TIMESTAMP - System packages updated."

  cd "$PROJECT_DIR" || { echo "$TIMESTAMP - ERROR: Project dir missing"; exit 1; }

  echo "$TIMESTAMP - Pulling Git changes..."
  git pull origin main || { echo "$TIMESTAMP - ERROR: Git pull failed"; exit 1; }

  echo "$TIMESTAMP - Installing Composer dependencies..."
  composer install --no-interaction --prefer-dist --optimize-autoloader

  echo "$TIMESTAMP - Setting correct permissions..."
  chown -R www-data:www-data "$PROJECT_DIR/storage" "$PROJECT_DIR/bootstrap/cache"
  chmod -R 775 "$PROJECT_DIR/storage" "$PROJECT_DIR/bootstrap/cache"

  echo "$TIMESTAMP - Running Laravel optimizations..."
  php artisan migrate --force || { echo "$TIMESTAMP - ERROR: Migrations failed"; exit 1; }
  php artisan config:cache
  php artisan route:cache
  php artisan view:cache  # <-- Fixed line

  echo "$TIMESTAMP - Restarting Nginx..."
  systemctl restart nginx && echo "$TIMESTAMP - Nginx restarted."
 } >> "$LOG_FILE" 2>&1

 