-- Q4) Find the most frequently purchased product.

SELECT p.ProductName,
       SUM(o.Quantity) AS TotalUnitsSold
FROM Products p
JOIN Orders o ON o.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalUnitsSold DESC
LIMIT 1;
