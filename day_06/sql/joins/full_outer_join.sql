-- FULL OUTER JOIN

-- Q1) Show all students and departments — include even those without any match.

select s.student_name, d.department_name
from students s
left join departments d
on s.department_id = d.department_id
union
select s.student_name, d.department_name
from students s
right join departments d
on s.department_id = d.department_id;


-- Q2) Combine student and result data to show all students and all marks, whether matched or not.

select s.student_name, r.marks
from students s
left join results r
on s.student_id = r.student_id
union
select s.student_name, r.marks
from students s
right join results r
on s.student_id = r.student_id;
