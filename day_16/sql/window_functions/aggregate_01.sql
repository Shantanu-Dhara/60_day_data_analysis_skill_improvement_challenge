-- Q1. Show each customer’s total spending beside every order.

select OrderID, ProductName, CustomerID,
sum(orders.Quantity * products.Price) 
over(partition by CustomerID order by OrderDate) as Total_Spent_By_Customer
from orders
join products on orders.ProductID = products.ProductID;
