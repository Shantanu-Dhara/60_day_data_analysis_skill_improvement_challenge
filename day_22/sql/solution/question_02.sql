-- 02) Find total spending by each customer and rank them (Top Performers)

SELECT 
    c.Name,
    SUM(p.Price * o.Quantity) AS TotalSpent,
    RANK() OVER (ORDER BY SUM(p.Price * o.Quantity) DESC) AS SpendingRank
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY c.Name;
