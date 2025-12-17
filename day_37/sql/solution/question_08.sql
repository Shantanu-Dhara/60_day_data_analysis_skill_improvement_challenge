-- Q8) Get orders that are not 'Delivered'.

select * 
from ecommerce_orders.orders
where not Status = "Delivered";