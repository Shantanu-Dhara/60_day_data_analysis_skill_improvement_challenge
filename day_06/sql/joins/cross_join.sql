-- CROSS JOIN

-- Q1) Display all possible combinations of students and departments.
select students.student_name, departments.department_name
from students 
cross join departments;

-- Q2) Generate a list of all possible student-department pairs (useful to simulate assigning students to every department).
select CONCAT(students.student_name, ' - ', departments.department_name) as student_department_pair
from students
cross join departments;
