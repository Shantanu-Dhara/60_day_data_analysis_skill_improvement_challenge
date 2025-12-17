-- Q1) Find all orders placed by 'Alice' ?

select * 
from ecommerce_orders.orders
where CustomerName = 'Alice';