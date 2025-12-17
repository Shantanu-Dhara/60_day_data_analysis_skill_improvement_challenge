-- Q3) Find orders where product name contains 'Lap'.

select * 
from ecommerce_orders.orders
where Product like "%Lap%";
