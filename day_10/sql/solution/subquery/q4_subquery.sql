-- 04) Display all customers who have never placed an order.
SELECT Name
FROM Customers
WHERE CustomerID NOT IN (SELECT DISTINCT CustomerID FROM Orders);
