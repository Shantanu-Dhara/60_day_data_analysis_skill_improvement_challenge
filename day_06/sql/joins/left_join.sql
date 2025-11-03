-- LEFT JOIN

-- Q1) Display all students and their department names — include those who don’t belong to any department.

select * from students 
left join departments
on students.department_id = departments.department_id;

-- Q2) List all students and their marks, even if some students don’t have marks yet.

select students.student_id , students.student_name, results.marks 
from students left join results
on students.student_id = results.student_id;