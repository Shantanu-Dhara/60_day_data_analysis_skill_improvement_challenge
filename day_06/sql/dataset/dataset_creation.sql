create database joinsPractice;

-- Students Table___________________________

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    department_id INT
);

INSERT INTO Students (student_id, student_name, department_id)
VALUES
(1, 'Shantanu', 101),
(2, 'Priya', 102),
(3, 'Rahul', 101),
(4, 'Riya', 103),
(5, 'Arjun', NULL);

-- Departments Table___________________________

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO Departments (department_id, department_name)
VALUES
(101, 'Computer Science'),
(102, 'Marketing'),
(103, 'Finance'),
(104, 'HR');

-- Results Table___________________________

CREATE TABLE Results (
    result_id INT PRIMARY KEY,
    student_id INT,
    marks INT
);

INSERT INTO Results (result_id, student_id, marks)
VALUES
(1, 1, 85),
(2, 2, 75),
(3, 3, 92),
(4, 5, 60);

-- Managers Table (for Self Join)___________

CREATE TABLE Managers (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    manager_id INT
);

INSERT INTO Managers (emp_id, emp_name, manager_id)
VALUES
(1, 'Raj', NULL),
(2, 'Rohan', 1),
(3, 'Shantanu', 2),
(4, 'Priya', 2);

