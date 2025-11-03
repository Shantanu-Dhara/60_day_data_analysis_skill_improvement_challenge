-- INNER JOIN

-- Q1) Show each student’s name along with their department name.

select students.student_name, departments.department_name 
from students inner join departments
on students.department_id = departments.department_id;

-- Q2) Display the student name and marks (use Students and Results tables).

select students.student_name, results.marks 
from students inner join results
on students.student_id = results.student_id;

-- Q3) Show department name and the names of students who belong to that department.

select departments.department_name, students.student_name
from departments inner join students
on departments.department_id = students.department_id;

