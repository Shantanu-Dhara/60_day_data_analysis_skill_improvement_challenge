-- Q1. Find the latest order date for each customer.

select CustomerID, OrderID, OrderDate,
last_value(OrderDate) over(partition by CustomerID order by OrderDate 
rows between unbounded preceding and unbounded following) as First_Order_Date
from orders;
