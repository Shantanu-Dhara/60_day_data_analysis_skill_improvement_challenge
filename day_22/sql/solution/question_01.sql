-- 01) Which city generated the highest total revenue

SELECT 
    c.City,
    SUM(p.Price * o.Quantity) AS TotalRevenue
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY c.City
ORDER BY TotalRevenue DESC
LIMIT 1;
