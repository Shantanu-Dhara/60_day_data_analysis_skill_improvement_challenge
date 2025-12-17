-- Q4) Get all delivered orders, sorted by OrderDate descending.

select *
from ecommerce_orders.orders
where Status = 'Delivered' order by OrderDate desc;