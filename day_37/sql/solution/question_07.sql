-- Q7) Find orders placed by 'Alice' or 'Bob'.

select * 
from ecommerce_orders.orders
where CustomerName = "Alice" or CustomerName = "Bob";