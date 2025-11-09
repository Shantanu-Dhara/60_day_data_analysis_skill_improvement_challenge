-- 01) Retrieve the total number of orders placed.

select 
    COUNT(orders.order_id) as total_orders
from
    pizzahut.orders;