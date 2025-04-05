# University Database System

This repository contains SQL code for a university database management system that tracks faculty members, courses, teachers, students, projects, and their relationships.

## Table of Contents
- [Database Schema](#database-schema)
- [Tables](#tables)
- [Relationships](#relationships)
- [Sample Data](#sample-data)
- [Sample Queries](#sample-queries)
- [Installation](#installation)
- [Usage](#usage)
- [Known Issues](#known-issues)

## Database Schema

The database consists of 7 tables with relationships that model a university system:

1. Faculty Members
2. Courses
3. Teachers
4. Projects/Theses
5. Students
6. Teacher-Course Assignments
7. Student Course Registrations

### Tables

#### Faculty Member
```sql
CREATE TABLE faculty_member (
    Faculty_ID VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
```

#### Course
```sql
CREATE TABLE course (
    Course_ID VARCHAR(50) PRIMARY KEY,
    Course_Name VARCHAR(255),
    Theory_Component BOOLEAN,
    Credits INT,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
```

#### Teacher
```sql
CREATE TABLE teacher (
    Teacher_ID VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(100),
    Room_Number INT,
    Floor_Number INT,
    Phone_Number VARCHAR(20),
    Email VARCHAR(100),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
```

#### Project Thesis
```sql
CREATE TABLE project_thesis (
    Project_ID VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(255),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
```

#### Student
```sql
CREATE TABLE student (
    Student_ID VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(100),
    Date_of_Birth DATE,
    Address VARCHAR(255),
    Age INT,
    CGPA DECIMAL(3,2),
    Faculty_ID VARCHAR(50),
    Project_ID VARCHAR(50),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (Faculty_ID) REFERENCES faculty_member(Faculty_ID),
    FOREIGN KEY (Project_ID) REFERENCES project_thesis(Project_ID)
);
```

#### Teacher Course
```sql
CREATE TABLE teacher_course (
    Teacher_Course_ID VARCHAR(50) PRIMARY KEY,
    Teacher_ID VARCHAR(50),
    Course_ID VARCHAR(50),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (Teacher_ID) REFERENCES teacher(Teacher_ID),
    FOREIGN KEY (Course_ID) REFERENCES course(Course_ID)
);
```

#### Student Course
```sql
CREATE TABLE student_course (
    Student_Course_ID VARCHAR(50) PRIMARY KEY,
    Student_ID VARCHAR(50),
    Course_ID VARCHAR(50),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (Student_ID) REFERENCES student(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES course(Course_ID)
);
```

### Relationships

- Students are assigned to Faculty Members (advisors)
- Students work on Projects/Theses
- Teachers are assigned to Courses
- Students register for Courses

## Sample Data

The database includes sample data for all tables. Below are the INSERT statements:

### Faculty Member Data
```sql
INSERT INTO faculty_member (Faculty_ID, Name, Age) VALUES 
('710002880', 'Dr. Smith', 45), 
('710002881', 'Dr. Brown', 48), 
('710002882', 'Dr. Brown', 48), 
('710002883', 'Dr. Taylor', 42), 
('710002884', 'Dr. Anderson', 55), 
('710002885', 'Dr. Thomas', 40), 
('710002886', 'Dr. Jackson', 52), 
('710002887', 'Dr. White', 46), 
('710002888', 'Dr. Harris', 49), 
('710002889', 'Dr. Martin', 53);
```

### Course Data
```sql
INSERT INTO course (Course_ID, Course_Name, Theory_Component, Credits) VALUES
('CIS222', 'Database Systems', TRUE, 3),
('CIS223', 'Computer Networks', TRUE, 3),
('CIS224', 'Operating Systems', TRUE, 3),
('CIS225', 'Artificial Intelligence', TRUE, 3),
('CIS226', 'Software Engineering', TRUE, 3),
('CIS227', 'Cybersecurity', TRUE, 3),
('CIS228', 'Cloud Computing', TRUE, 3),
('CIS229', 'Data Science', TRUE, 3),
('CIS230', 'Web Development', TRUE, 3),
('CIS231', 'Machine Learning', TRUE, 3);
```

### Teacher Data
```sql
INSERT INTO teacher (Teacher_ID, Name, Room_Number, Floor_Number, Phone_Number, Email) VALUES
('T001', 'Prof. Adams', 101, 1, '123-456-7890', 'adams@example.com'),
('T002', 'Prof. Baker', 102, 1, '123-456-7891', 'baker@example.com'),
('T003', 'Prof. Carter', 103, 1, '123-456-7892', 'carter@example.com'),
('T004', 'Prof. Davis', 201, 2, '123-456-7893', 'davis@example.com'),
('T005', 'Prof. Evans', 202, 2, '123-456-7894', 'evans@example.com'),
('T006', 'Prof. Foster', 203, 2, '123-456-7895', 'foster@example.com'),
('T007', 'Prof. Green', 301, 3, '123-456-7896', 'green@example.com'),
('T008', 'Prof. Hill', 302, 3, '123-456-7897', 'hill@example.com'),
('T009', 'Prof. Irwin', 303, 3, '123-456-7898', 'irwin@example.com'),
('T010', 'Prof. Jones', 401, 4, '123-456-7899', 'jones@example.com');
```

### Project Thesis Data
```sql
INSERT INTO project_thesis (Project_ID, Name) VALUES
('P001', 'AI Chatbot for Education'),
('P002', 'Blockchain-based Voting System'),
('P003', 'IoT-based Smart Home'),
('P004', 'Autonomous Car Simulation'),
('P005', 'AI-Powered Healthcare Assistant'),
('P006', 'Augmented Reality in E-Commerce'),
('P007', 'Deep Learning for Image Recognition'),
('P008', 'Cybersecurity Threat Detection'),
('P009', 'Big Data Analysis for Marketing'),
('P010', 'Quantum Computing in Cryptography');
```

### Student Data
```sql
INSERT INTO student (Student_ID, Name, Date_of_Birth, Address, Age, CGPA, Faculty_ID, Project_ID) VALUES
('193-16-461', 'Alice Johnson', '2000-03-15', 'Dhaka', 24, 3.8, '710002880', 'P001'),
('193-16-462', 'Bob Smith', '1999-07-22', 'Chittagong', 23, 3.6, '710002881', 'P002'),
('193-16-463', 'Charlie Brown', '2001-01-10', 'Khulna', 22, 3.9, '710002882', 'P003'),
('193-16-464', 'David White', '1998-11-05', 'Rajshahi', 21, 3.5, '710002883', 'P004'),
('193-16-465', 'Emily Harris', '2000-05-30', 'Sylhet', 20, 3.7, '710002884', 'P005'),
('193-16-467', 'Frank Wilson', '1999-09-12', 'Rangpur', 19, 3.6, '710002885', 'P006'),
('193-16-468', 'Grace Thomas', '2001-02-25', 'Comilla', 25, 3.8, '710002886', 'P007'),
('193-16-480', 'Hannah Martin', '2000-06-18', 'Dhaka', 24, 3.9, '710002887', 'P008'),
('193-16-485', 'Isaac Carter', '1998-12-20', 'Chittagong', 23, 3.4, '710002888', 'P009'),
('193-16-483', 'Jessica Green', '2001-04-08', 'Dhaka', 22, 3.7, '710002889', 'P010');
```

### Teacher-Course Assignments
```sql
INSERT INTO teacher_course (Teacher_Course_ID, Teacher_ID, Course_ID) VALUES
('TC001', 'T001', 'CIS222'),
('TC002', 'T002', 'CIS223'),
('TC003', 'T003', 'CIS224'),
('TC004', 'T004', 'CIS225'),
('TC005', 'T005', 'CIS226'),
('TC006', 'T006', 'CIS227'),
('TC007', 'T007', 'CIS228'),
('TC008', 'T008', 'CIS229'),
('TC009', 'T009', 'CIS230'),
('TC010', 'T010', 'CIS231');
```

### Student-Course Registrations
```sql
INSERT INTO student_course (Student_Course_ID, Student_ID, Course_ID) VALUES
('SC001', '193-16-461', 'CIS222'),
('SC002', '193-16-462', 'CIS223'),
('SC003', '193-16-463', 'CIS224'),
('SC004', '193-16-465', 'CIS225'),
('SC005', '193-16-467', 'CIS226'),
('SC006', '193-16-468', 'CIS227'),
('SC007', '193-16-480', 'CIS228'),
('SC008', '193-16-485', 'CIS229'),
('SC009', '193-16-483', 'CIS230'),
('SC010', '193-16-464', 'CIS231');
```

## Sample Queries

The repository includes 10 sample queries that demonstrate different SQL operations:

### Query 1: Students with Multiple Course Registrations
Find students who registered for more than two courses.
```sql
SELECT s.Student_ID, s.Name, COUNT(sc.Course_ID) AS Course_Count
FROM student s
JOIN student_course sc ON s.Student_ID = sc.Student_ID
GROUP BY s.Student_ID, s.Name
HAVING COUNT(sc.Course_ID) > 2;
```

### Query 2: Teacher Email and Phone Filtering
Find teachers whose email contains 'diu' and their phone number starts with '017'.
```sql
SELECT * FROM teacher
WHERE Email LIKE '%diu%'
AND Phone_Number LIKE '017%';
```

### Query 3: Location-Based CGPA Query
Find students who are from 'Dhaka' but have CGPA greater than 3.65.
```sql
SELECT * FROM student
WHERE Address = 'Dhaka' AND CGPA > 3.65;
```

### Query 4: Negative Location Filtering
Find students who are NOT from 'Dhaka' or 'Chittagong'.
```sql
SELECT * FROM student
WHERE Address NOT IN ('Dhaka', 'Chittagong');
```

### Query 5: Course Selection Query
Find students who are taking courses with Course IDs CIS222, CIS223, or CIS224.
```sql
SELECT s.Student_ID, s.Name, sc.Course_ID
FROM student s
JOIN student_course sc ON s.Student_ID = sc.Student_ID
WHERE sc.Course_ID IN ('CIS222', 'CIS223', 'CIS224');
```

### Query 6: Project Keyword Search
Find projects that have 'Library' or 'AI' in the title.
```sql
SELECT * FROM project_thesis
WHERE Name LIKE '%Library%' OR Name LIKE '%AI%';
```

### Query 7: Age and CGPA Filtering
Find students aged between 20 and 24, and whose CGPA is greater than 3.71.
```sql
SELECT * FROM student
WHERE Age BETWEEN 20 AND 24
AND CGPA > 3.71;
```

### Query 8: Enrollment Gap Analysis
Find courses without students enrolled.
```sql
SELECT c.Course_ID, c.Course_Name
FROM course c
LEFT JOIN student_course sc ON c.Course_ID = sc.Course_ID
WHERE sc.Student_ID IS NULL;
```

### Query 9: Popular Course Identification
List courses with more than one student enrolled.
```sql
SELECT c.Course_ID, c.Course_Name, COUNT(sc.Student_ID) AS Student_Count
FROM course c
JOIN student_course sc ON c.Course_ID = sc.Course_ID
GROUP BY c.Course_ID, c.Course_Name
HAVING COUNT(sc.Student_ID) > 1;
```

### Query 10: Faculty Supervision Query
Find students supervised by a specific faculty member.
```sql
SELECT * FROM student
WHERE Faculty_ID = '710002880';
```

## Installation

1. Make sure you have MySQL or a compatible database system installed
2. Create a new database
3. Run the SQL script to create tables and insert sample data:

```bash
mysql -u username -p database_name < university_database.sql
```

## Usage

After installation, you can:

1. Use the provided sample queries for reference
2. Create your own queries to extract specific information
3. Modify the schema or add additional tables as needed

## Known Issues

1. There's a syntax error in the faculty_member INSERT statement in the original code (a missing closing parenthesis after `('710002881', 'Dr. Brown', 48,`). This has been corrected in this README.

2. The teacher_course INSERT statement is missing a semicolon at the end:
```sql
INSERT INTO teacher_course (Teacher_Course_ID, Teacher_ID, Course_ID) VALUES
('TC001', 'T001', 'CIS222'),
...
('TC010', 'T010', 'CIS231') -- Missing semicolon here
```

Fix these issues before executing the SQL script to avoid errors.