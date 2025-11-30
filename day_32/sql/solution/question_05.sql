-- 05) Show total amount spent by each customer (JOIN + CRUD practice)

SELECT c.Name,
       SUM(p.Price * o.Quantity) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN Products p ON p.ProductID = o.ProductID
GROUP BY c.Name;


