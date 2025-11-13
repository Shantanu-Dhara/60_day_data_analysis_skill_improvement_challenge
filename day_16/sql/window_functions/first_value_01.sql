-- Q1. Find the first product ordered by each customer.

select CustomerID, OrderID, OrderDate,
first_value(OrderDate) 
over(partition by CustomerID order by OrderDate desc) as First_Order_Date
from orders;
