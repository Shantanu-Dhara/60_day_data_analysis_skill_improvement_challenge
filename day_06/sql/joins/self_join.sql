-- SELF JOIN

-- Q1) Using the Managers table, display each employee with their manager’s name.

select e.emp_name as Employee, m.emp_name as Manager
from managers e
left join managers m
on e.manager_id = m.emp_id;

-- Q2) Show all employees who are managers of someone.

select distinct m.emp_name as Manager
from managers e
inner join managers m
on e.manager_id = m.emp_id;

-- Q3) Find the employee-manager hierarchy (who reports to whom).

select e.emp_name as Employee, m.emp_name as Manager, mm.emp_name as Senior_Manager
from managers e
left join managers m on e.manager_id = m.emp_id
left join managers mm on m.manager_id = mm.emp_id;
