-- 03) Find the most frequently ordered product

SELECT p.ProductName, SUM(o.Quantity) AS TotalUnitsSold
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY p.ProductID
ORDER BY TotalUnitsSold DESC
LIMIT 1;





