-- 08) Identify customers who bought Electronics category items

SELECT DISTINCT c.Name
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN Products p ON o.ProductID = p.ProductID
WHERE p.Category = 'Electronics';
