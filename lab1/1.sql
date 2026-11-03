-- Create and select the database
CREATE DATABASE student_db;
USE student_db;

-- CREATE TABLE
CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL UNIQUE,
    hod VARCHAR(50)
);

CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(60) UNIQUE,
    dob DATE,
    gender CHAR(1),
    city VARCHAR(30),
    cgpa DECIMAL(3,2),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

CREATE TABLE course (
    course_id VARCHAR(10) PRIMARY KEY,
    course_name VARCHAR(60) NOT NULL,
    credits INT,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

CREATE TABLE enrollment (
    enroll_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id VARCHAR(10),
    marks INT,
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);

SHOW TABLES;
DESC student;



ALTER TABLE student ADD COLUMN phone VARCHAR(15);

ALTER TABLE student MODIFY COLUMN phone VARCHAR(20);

ALTER TABLE student RENAME COLUMN phone TO mobile_no;

ALTER TABLE student ADD COLUMN remarks VARCHAR(100);

ALTER TABLE student DROP COLUMN remarks;

ALTER TABLE course ADD CONSTRAINT chk_credits
CHECK (credits BETWEEN 1 AND 6);

DESC student;

-- DROP TABLE

CREATE TABLE temp_students (
    id INT,
    name VARCHAR(20)
);

SHOW TABLES;

DROP TABLE temp_students;

SHOW TABLES;