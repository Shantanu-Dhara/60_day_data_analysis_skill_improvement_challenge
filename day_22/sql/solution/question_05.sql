-- 05) Top-selling products based on total quantity sold.

SELECT 
    p.ProductName,
    SUM(o.Quantity) AS TotalSold
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalSold DESC;

