-- RIGHT JOIN

-- Q1) Show all departments and their student names (include departments with no students).

select departments.department_name, students.student_name
from departments right join students
on departments.department_id = students.department_id;

-- Q2) Display all students’ marks from the Results table — even if some marks don’t belong to a valid student.

select students.student_name, results.marks
from results right join students
on results.student_id = students.student_id;