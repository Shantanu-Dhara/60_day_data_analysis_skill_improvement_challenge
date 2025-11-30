-- Q2) Which customer has spent the highest amount?

SELECT c.Name,
       SUM(p.Price * o.Quantity) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN Products p ON p.ProductID = o.ProductID
GROUP BY c.Name
ORDER BY TotalSpent DESC
LIMIT 1;
