-- 04) Display all customers who have never placed an order.

select customers.Name from customers where CustomerID not in (SELECT DISTINCT CustomerID FROM Orders);