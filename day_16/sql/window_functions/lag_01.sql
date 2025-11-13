-- Q1. Compare each order’s date with the next order’s date.

select OrderID, OrderDate,
lag(OrderDate) over(order by OrderDate) as previous_OrderDate
from orders;