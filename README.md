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


                    # 📘 ASSIGNMENT 2

## 🔧 Bash Scripts for AWS Ubuntu Server Management

---

## 🔄 BACKUP SCHEMES

### 1. Full Backup
**Execution**: Copies all files and databases every time the backup runs.

**Advantages**:
- Complete backup of all data.
- Easy to restore from a single backup set.

**Disadvantages**:
- Time-consuming and resource-intensive.
- Requires significant storage space.

---

### 2. Incremental Backup
**Execution**: Backs up only files changed since the last incremental backup.

**Advantages**:
- Fast and efficient with minimal storage use.
- Reduces system load during backup.

**Disadvantages**:
- Slower to restore (requires all incremental sets + full backup).
- Slightly more complex to manage.

---

### 3. Differential Backup
**Execution**: Backs up files changed since the last full backup.

**Advantages**:
- Faster restore than incremental (only need full + last differential).
- Requires less space than full backup.

**Disadvantages**:
- More storage than incremental.
- Grows larger until next full backup.

---

## 🎯 PURPOSE OF EACH SCRIPT

### `health_check.sh`
- **Purpose**: Monitor system resource usage and API endpoint availability.

### `backup_api.sh`
- **Purpose**: Create a backup of the API project directory and its database.

### `update_server.sh`
- **Purpose**: Automate system and API code updates from GitHub.

---

## ⚙️ HOW TO SET UP AND RUN THE SCRIPTS

### 📤 Upload Scripts to Your Server

```bash
scp health_check.sh backup_api.sh update_server.sh ubuntu@<your-server-ip>:~/bash_scripts/

