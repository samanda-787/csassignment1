
#Update packages, pull Laravel API changes, restart web server
#!/bin/bash

LOG_FILE="/var/log/update.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
PROJECT_DIR="C:\xampp\htdocs\csassignment1"

{
  echo "$TIMESTAMP - Updating system..."
  apt update && apt upgrade -y && echo "$TIMESTAMP - System packages updated."

  cd "$PROJECT_DIR" || { echo "$TIMESTAMP - ERROR: Project dir missing"; exit 1; }

  echo "$TIMESTAMP - Pulling Git changes..."
  git pull origin main || { echo "$TIMESTAMP - ERROR: Git pull failed"; exit 1; }

  echo "$TIMESTAMP - Running Laravel optimizations..."
  php artisan migrate --force
  php artisan config:cache
  php artisan route:cache

  systemctl restart apache2 && echo "$TIMESTAMP - Nginx restarted."

} >> "$LOG_FILE"
