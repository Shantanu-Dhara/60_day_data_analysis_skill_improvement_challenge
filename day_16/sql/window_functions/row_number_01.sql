-- Q1. Assign row numbers to all orders by OrderDate.

select OrderID, CustomerID, OrderDate,
row_number() over(order by OrderDate) as RowNum
from orders;