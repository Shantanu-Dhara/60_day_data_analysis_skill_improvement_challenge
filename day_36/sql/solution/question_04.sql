-- 04) Show customer-wise total spending

SELECT c.Name, SUM(p.Price * o.Quantity) AS TotalSpending
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY c.CustomerID;



