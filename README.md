
# Student Management API - Software Engineering Assignment

![Laravel](https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)

A RESTful API for managing student information and Software Engineering curriculum.

## API Endpoints

### GET `/api/students`
**Method:** GET  
**Description:** Returns a list of 32 students with their enrolled programs  
**Response:**
```json
[
  {
    "id": 1,
    "name": "John Doe",
    "program": "Software Engineering"
  },
  {
    "id": 2,
    "name": "Jane Smith",
    "program": "Computer Science"
  },
  {
    "id": 3,
    "name": "Mike Johnson",
    "program": "Software Engineering"
  },
  {
    "id": 4,
    "name": "Sarah Williams",
    "program": "Information Technology"
  },
  {
    "id": 5,
    "name": "David Brown",
    "program": "Software Engineering"
  },
  {
    "id": 6,
    "name": "Emily Davis",
    "program": "Computer Science"
  },
  {
    "id": 7,
    "name": "Robert Wilson",
    "program": "Software Engineering"
  },
  {
    "id": 8,
    "name": "Jennifer Taylor",
    "program": "Information Technology"
  },
  {
    "id": 9,
    "name": "Thomas Moore",
    "program": "Software Engineering"
  },
  {
    "id": 10,
    "name": "Lisa Anderson",
    "program": "Computer Science"
  },
  {
    "id": 11,
    "name": "Rebeca Edson",
    "program": "Software Engineering"
  }
]

{
  "Year 1": [
    {
      "id": 1,
      "name": "Introduction to Programming"
    },
    {
      "id": 2,
      "name": "Discrete Mathematics"
    },
    {
      "id": 3,
      "name": "Computer Systems"
    },
    {
      "id": 13,
      "name": "Development Perspectives"
    },
    {
      "id": 14,
      "name": "Discrete Mathematics for ICT"
    },
    {
      "id": 15,
      "name": "Introduction to High Level Programming"
    },
    {
      "id": 16,
      "name": "Calculus for Computing"
    },
    {
      "id": 17,
      "name": "Communication Skills"
    },
    {
      "id": 18,
      "name": "Linear Algebra for ICT"
    },
    {
      "id": 19,
      "name": "Introduction to Information Technology"
    },
    {
      "id": 20,
      "name": "Calculus"
    },
    {
      "id": 21,
      "name": "Mathematical Foundations of Information Security"
    },
    {
      "id": 22,
      "name": "Numerical Analysis for ICT"
    },
    {
      "id": 23,
      "name": "Introduction to Database Systems"
    },
    {
      "id": 24,
      "name": "Introduction to Computer Networking"
    },
    {
      "id": 25,
      "name": "Introduction to Probability and Statistics"
    },
    {
      "id": 26,
      "name": "Introduction to Software Engineering"
    },
    {
      "id": 27,
      "name": "Introduction to IT Security"
    },
    {
      "id": 28,
      "name": "Wearable Computing"
    },
    {
      "id": 29,
      "name": "Industrial Practical Training I"
    }
  ],
  "Year 2": [
    {
      "id": 4,
      "name": "Data Structures and Algorithms"
    },
    {
      "id": 5,
      "name": "Database Systems"
    },
    {
      "id": 6,
      "name": "Software Engineering Principles"
    },
    {
      "id": 30,
      "name": "Object-Oriented Programming in Java"
    },
    {
      "id": 31,
      "name": "Computer Networking Protocols"
    },
    {
      "id": 32,
      "name": "Operating Systems"
    },
    {
      "id": 33,
      "name": "Introduction to Linux/Unix Systems"
    },
    {
      "id": 34,
      "name": "Systems Analysis and Design"
    },
    {
      "id": 35,
      "name": "Data Structure and Algorithms Analysis"
    },
    {
      "id": 36,
      "name": "Computer Organization and Architecture I"
    },
    {
      "id": 37,
      "name": "Computational Theory"
    },
    {
      "id": 38,
      "name": "Internet Programming and Application I"
    },
    {
      "id": 39,
      "name": "ICT Research Methods"
    },
    {
      "id": 40,
      "name": "Open Source Technologies"
    },
    {
      "id": 41,
      "name": "Object-Oriented Systems Design"
    },
    {
      "id": 42,
      "name": "Database Management Systems"
    },
    {
      "id": 43,
      "name": "Software Testing and Quality Assurance"
    },
    {
      "id": 44,
      "name": "Industrial Practical Training II"
    }
  ],
  "Year 3": [
    {
      "id": 7,
      "name": "Web Application Development"
    },
    {
      "id": 8,
      "name": "Software Design Patterns"
    },
    {
      "id": 9,
      "name": "Operating Systems"
    },
    {
      "id": 45,
      "name": "Selected Topic in Software Engineering"
    },
    {
      "id": 46,
      "name": "Web Framework Development using Javascript"
    },
    {
      "id": 47,
      "name": "Mobile Application Development"
    },
    {
      "id": 48,
      "name": "Advanced Java Programming"
    },
    {
      "id": 49,
      "name": "System Analysis and Design"
    },
    {
      "id": 50,
      "name": "Distributed Database Systems"
    },
    {
      "id": 51,
      "name": "Information and Communication Systems Security"
    },
    {
      "id": 52,
      "name": "Data Mining and Warehousing"
    },
    {
      "id": 53,
      "name": "Industrial Practical Training III"
    },
    {
      "id": 54,
      "name": "Secure System Development"
    },
    {
      "id": 55,
      "name": "Compiler Technology"
    },
    {
      "id": 56,
      "name": "Fundamentals of IoT"
    },
    {
      "id": 57,
      "name": "Embedded Systems I"
    },
    {
      "id": 58,
      "name": "ICT Entrepreneurship"
    },
    {
      "id": 59,
      "name": "Python Programming"
    },
    {
      "id": 60,
      "name": "Internet Programming and Application II"
    },
    {
      "id": 61,
      "name": "Mathematical Logic and Formal Semantics"
    },
    {
      "id": 62,
      "name": "Computer Graphics"
    }
  ],
  "Year 4": [
    {
      "id": 10,
      "name": "Software Project Management"
    },
    {
      "id": 11,
      "name": "Distributed Systems"
    },
    {
      "id": 12,
      "name": "Final Year Project"
    },
    {
      "id": 63,
      "name": "ICT Project Management"
    },
    {
      "id": 64,
      "name": "Cloud Computing"
    },
    {
      "id": 65,
      "name": "Big Data Analytics"
    },
    {
      "id": 66,
      "name": "Information Security"
    },
    {
      "id": 67,
      "name": "Software Engineering Project"
    },
    {
      "id": 68,
      "name": "Software Deployment and Management"
    },
    {
      "id": 69,
      "name": "Artificial Intelligence"
    },
    {
      "id": 70,
      "name": "Foundations of Data Science"
    },
    {
      "id": 71,
      "name": "Digital Image Processing"
    },
    {
      "id": 72,
      "name": "Semantic Web and Social Network"
    },
    {
      "id": 73,
      "name": "System Administration and Management"
    },
    {
      "id": 74,
      "name": "Professional Ethics and Conduct"
    },
    {
      "id": 75,
      "name": "Computer Maintenance"
    },
    {
      "id": 76,
      "name": "Human Computer Interaction"
    },
    {
      "id": 77,
      "name": "Programming"
    },
    {
      "id": 78,
      "name": "Software Reverse Engineering"
    },
    {
      "id": 79,
      "name": "Electronic and Mobile Commerce"
    },
    {
      "id": 80,
      "name": "Multimedia Content Development"
    },
    {
      "id": 81,
      "name": "Distributed Computing"
    }
  ]
}
# Clone repository
git clone https://github.com/samanda-787/student-api.git
cd student-api

# Install dependencies
composer install

# Configure environment
cp .env.example .env
php artisan key:generate

# Setup database
php artisan migrate --seed

# Start development server
php artisan serve

Clone the repository:
git clone https://github.com/samanda-787/csassignment1.git
