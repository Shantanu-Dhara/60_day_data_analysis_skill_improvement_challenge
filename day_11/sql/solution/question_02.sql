-- 02) Show order value category (High / Medium / Low)

SELECT 
    o.OrderID,
    c.Name AS CustomerName,
    p.ProductName,
    (p.Price * o.Quantity) AS TotalAmount,
    CASE
        WHEN (p.Price * o.Quantity) > 40000 THEN 'High'
        WHEN (p.Price * o.Quantity) BETWEEN 10000 AND 40000 THEN 'Medium'
        ELSE 'Low'
    END AS OrderCategory
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Products p ON o.ProductID = p.ProductID;
