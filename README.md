# Student Management API 

## API Endpoints
- `https://ec2-44-210-127-201.compute-1.amazonaws.com/students` - Student list (name + program)
- `https://ec2-44-210-127-201.compute-1.amazonaws.com/subjects` - Software Engineering curriculum by year

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

### 3. Install Laravel Project
```bash
# Move project to XAMPP's htdocs
cd C:\xampp\htdocs
git clone https://github.com/samanda-787/csassignment1.git

