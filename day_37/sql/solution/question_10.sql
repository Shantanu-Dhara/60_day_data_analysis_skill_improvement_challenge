-- Q10) Find orders placed in December 2025.

select * 
from ecommerce_orders.orders
where OrderDate between '2025-12-01' and '2025-12-31';