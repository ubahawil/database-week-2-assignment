CREATE DATABASE school_management;

USE school_management;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    gender VARCHAR(10)
);

INSERT INTO students (student_id, first_name, last_name, age, gender)
VALUES
(1, 'Ahmed', 'Ali', 16, 'Male'),
(2, 'Amina', 'Hassan', 17, 'Female'),
(3, 'Mohamed', 'Omar', 15, 'Male'),
(4, 'Fatima', 'Abdi', 16, 'Female'),
(5, 'Yusuf', 'Hussein', 17, 'Male');

CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    subject VARCHAR(50)
);

INSERT INTO teachers (teacher_id, first_name, last_name, subject)
VALUES
(1, 'Abdi', 'Hassan', 'Mathematics'),
(2, 'Maryam', 'Omar', 'English'),
(3, 'Ahmed', 'Yusuf', 'Science');

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    teacher_id INT
);

INSERT INTO courses (course_id, course_name, teacher_id)
VALUES
(1, 'Mathematics', 1),
(2, 'English', 2),
(3, 'Science', 3);

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT
);

INSERT INTO enrollments (enrollment_id, student_id, course_id)
VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 1),
(5, 5, 2);