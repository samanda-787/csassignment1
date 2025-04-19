# Student Management API 

![Laravel](https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)
## API Endpoints
- `http://ec2-16-170-217-124.eu-north-1.compute.amazonaws.com/subjects` - Software Engineering curriculum by year 
- `http://ec2-16-170-217-124.eu-north-1.compute.amazonaws.com/students` - Student list (name + program)

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

