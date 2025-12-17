-- Q5) Find top 3 most expensive orders.

select * 
from ecommerce_orders.orders
order by Price desc 
limit 3;