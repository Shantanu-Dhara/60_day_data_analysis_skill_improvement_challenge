-- Problem 1789 – primary department for each employee 

select employee_id, department_id
from employee
where primary_flag = 'y'

union

select employee_id, department_id
from employee
group by employee_id
having count(*) = 1;
