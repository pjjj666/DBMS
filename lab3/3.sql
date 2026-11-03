USE student_db;

-- Number functions
SELECT ABS(-15) AS abs_val, CEIL(8.75) AS ceil_val, FLOOR(8.75) AS floor_val,
       ROUND(8.756, 2) AS round_val, TRUNCATE(8.756, 1) AS trunc_val,
       MOD(17, 5) AS mod_val, POWER(2, 5) AS pow_val, SQRT(144) AS sqrt_val;

SELECT name, cgpa, ROUND(cgpa) AS rounded, CEIL(cgpa) AS ceiling, FLOOR(cgpa) AS flooring
FROM student WHERE dept_id = 1;

-- Aggregate functions
SELECT COUNT(*) AS total_students, COUNT(dept_id) AS with_dept,
       SUM(cgpa) AS total_cgpa, ROUND(AVG(cgpa), 2) AS avg_cgpa,
       MIN(cgpa) AS lowest, MAX(cgpa) AS highest
FROM student;

SELECT COUNT(DISTINCT city) AS distinct_cities FROM student;

SELECT SUM(marks) AS total_marks, AVG(marks) AS avg_marks
FROM enrollment WHERE student_id = 101;

-- Character functions
SELECT name, UPPER(name) AS upper_name, LOWER(name) AS lower_name, LENGTH(name) AS len
FROM student LIMIT 5;

SELECT CONCAT(name, ' (', city, ')') AS student_city,
       SUBSTRING(name, 1, 5) AS sub,
       LEFT(name, 3) AS left3,
       RIGHT(name, 3) AS right3,
       SUBSTRING_INDEX(email, '@', 1) AS username
FROM student LIMIT 5;

SELECT TRIM('  RV University  ') AS trimmed,
       REPLACE('Database Management', 'Management', 'Systems') AS replaced,
       REVERSE('MySQL') AS reversed,
       LPAD('7', 3, '0') AS lpad_val,
       RPAD('CS', 5, '*') AS rpad_val,
       INSTR('Bengaluru', 'g') AS position_of_g;