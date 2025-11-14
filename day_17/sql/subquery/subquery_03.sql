-- 03) Find customers who signed up before any order was placed.

select customers.Name from customers 
where customers.SignupDate < (select max(orders.OrderDate)
from orders join customers 
on orders.CustomerID = customers.CustomerID);

SELECT Name
FROM Customers
WHERE SignupDate < (
    SELECT MIN(OrderDate) FROM Orders
);


select max(orders.OrderDate) from orders;