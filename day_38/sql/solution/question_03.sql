-- 03) Find total spending per customer

SELECT 
    c.Name,
    SUM(p.Price * o.Quantity) AS TotalSpending
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY c.Name;



