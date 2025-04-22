# Student Management API 

![Laravel](https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)
## API Endpoints
- `http://ec2-16-170-217-124.eu-north-1.compute.amazonaws.com/subjects` - Student list (name + program)
- 
- `http://ec2-16-170-217-124.eu-north-1.compute.amazonaws.com/students` - Software Engineering curriculum by year

## XAMPP Setup Guide

### 1. Install XAMPP
Download from [Apache Friends](https://www.apachefriends.org/) and install with:
- Apache
- MySQL
- PHP 8.0+

### 2. Configure MySQL
1. Launch XAMPP Control Panel
2. Start Apache and MySQL
3. Open phpMyAdmin (`http://localhost/phpmyadmin`)
4. Create database: `student_api`

### 3. Installation
```bash
# Move project to XAMPP's htdocs
cd C:\xampp\htdocs
git clone https://github.com/samanda-787/csassignment1.git


                      ASSIGNMENT 2

                Bash Scripts for AWS Ubuntu Server Management

BACKUP SCHEMES 

1. Full Backup
Execution: Copies all files and databases every time the backup runs.

Advantages Of Full Backup

i)Complete backup of all data.
ii)Easy to restore from a single backup set.
Disadvantages Of Full Backup
i)Time-consuming and resource-intensive.
ii)Requires significant storage space.

2. Incremental Backup
Execution: Backs up only files changed since the last incremental backup.
Advantages Of Incremental Backup
i)Fast and efficient with minimal storage use.
ii)Reduces system load during backup.
Disadvantages Of Incremental Backup
i)Slower to restore (requires all incremental sets + full backup).
ii)Slightly more complex to manage.

3. Differential Backup
Execution: Backs up files changed since the last full backup.
Advantages Of Differential Backup
i)Faster restore than incremental (only need full + last differential).
ii)Requires less space than full backup.
Disadvantages Of Differential Backup
i)More storage than incremental.
ii)Grows larger until next full backup.

PURPOSE OF EACH scripts
1. health_check.sh
Purpose: Monitor system resource usage and API endpoint availability.

2. backup_api.sh
Purpose: Create a backup of the API project directory and its database.

3. update_server.sh
Purpose: Automate system and API code updates from GitHub.

  HOW TO SET UP AND RUN THE SCRIPTS 

Upload Scripts to Your Server
scp health_check.sh backup_api.sh update_server.sh ubuntu@<your-server-ip>:~/bash_scripts/

Set Execute Permissions
chmod +x health_check.sh
chmod +x backup_api.sh
chmod +x update_server.sh

Run a Script Manually
./health_check.sh
./backup_api.sh
./update_server.sh

Schedule with Cron
crontab -e

0 */6 * * * /home/ubuntu/bash_scripts/health_check.sh
0 2 * * * /home/ubuntu/bash_scripts/backup_api.sh
0 3 */3 * * /home/ubuntu/bash_scripts/update_server.sh

 Dependencies

Ensure the following tools are installed on your EC2 instance:
curl – for checking API endpoints.
tar – for archiving files.
mysqldump or pg_dump – for exporting your database (MySQL/PostgreSQL).
git – to pull updates from your GitHub repository.
Apache or Nginx – the web server used to host your API.

Install missing tools using:

sudo apt update
sudo apt install curl git apache2 mysql-client postgresql-client -y


To commit and push changes regularly, with clear commit messages indicating script development 
progress
Create a new folder: bash_scripts/ in your existing API repository.

Add the three scripts to this folder.

Use clear, descriptive commit messages. Examples:

git add bash_scripts/health_check.sh
git commit -m "Add health check script for server monitoring"

git add bash_scripts/backup_api.sh
git commit -m "Implement API backup and DB export script"

git add bash_scripts/update_server.sh
git commit -m "Automate server updates and Git pull for API"

Push changes to GitHub:
git push origin main
