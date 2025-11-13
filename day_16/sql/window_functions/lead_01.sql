-- Q1. Compare each order’s date with the next order’s date.

select OrderID, OrderDate,
lead(OrderDate) over(order by OrderDate) as Next_OrderDate
from orders;