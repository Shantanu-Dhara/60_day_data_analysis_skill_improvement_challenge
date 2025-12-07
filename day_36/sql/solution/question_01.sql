-- 01) Find total revenue generated from all orders

SELECT SUM(p.Price * o.Quantity) AS TotalRevenue
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID;



