-- 01) Find Duplicate Records in a table

select Name, count(*)
from practice.employee1
group by Name 
having count(*) > 1; 

-- 02) Retrive the second highest salary from the table

select * from practice.employee1 where salary in 
(select max(salary) as second_highest_salary from practice.employee1 where salary <
(select max(salary) as max_salary from practice.employee1));

-- 03) Find employees without department 

select e.*
from company_analytics.employees e
left join company_analytics.departments d
on e.department_id = d.department_id
where d.department_id is null;

-- 04) Total revenue per product

select p.product_id, p.product_name, sum(price * quantity) as total_revenue from 
ultimate_sql_lerning.products p join order_items o
on p.product_id = o.product_id
group by p.product_id; 


-- 05) Select top 3 highest paid salary

select * from company_analytics.employees order by salary desc limit 3;
select *, dense_rank() over(order by salary desc) as top_salaries from company_analytics.employees limit 3;


-- 06) Select customers who made purchases but never returned products

select distinct s.student_id from online_course_enrollment_system.students s
join online_course_enrollment_system.feedbacks f on
s.student_id = f.student_id
where s.student_id not in (
select student_id from online_course_enrollment_system.feedbacks);

-- 07) Show the count of orders per customer

select c.customer_id, c.first_name, count(o.order_id) as customer_wise_order
from ultimate_sql_lerning.customers c join ultimate_sql_lerning.orders o
on c.customer_id = o.customer_id
group by customer_id;

select o.customer_id, count(*) as order_count
from ultimate_sql_lerning.orders o
group by customer_id;

-- 08) Retrieve all employees who joined in 2023.

select * from ultimate_sql_lerning.customers where year(created_at) = 2023;

-- 09) Calculate the average order value per customer.

select employee_id, avg(salary) as avg_Salary from company_analytics.employees
group by employee_id;

-- 10) Get the latest order placed by each customer

select orders.customer_id, max(order_date) as latest_order
from ultimate_sql_lerning.orders 
group by orders.customer_id order by latest_order desc;