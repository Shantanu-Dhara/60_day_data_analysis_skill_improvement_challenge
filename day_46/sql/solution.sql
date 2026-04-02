-- 01) Find Repeat Customers

SELECT 
customer_id,
COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

-- 02) Employee Who Handled Most Orders

select name, count(order_id) as total_orders_handled
from employees join 
orders on employees.employee_id = orders.employee_id
group by name order by total_orders_handled desc;

# 3) Top City by Revenue

select c.city, sum(o.total_amount) as total_Revenue 
from customers c join orders o 
on c.customer_id = o.customer_id
group by c.city order by total_Revenue desc limit 5;


# 4) Top City by Revenue is greater then average revenue

select c.city, sum(o.total_amount) as total_Revenue 
from customers c join orders o 
on c.customer_id = o.customer_id
group by c.city having sum(o.total_amount) > (select avg(city_revenue) 
from (select sum(total_amount) as city_revenue from orders o
join customers c on o.customer_id = c.customer_id group by city) t );
