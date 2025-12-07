-- 09) Find the highest-priced product ordered by each customer

SELECT c.Name, MAX(p.Price) AS HighestPriceBought
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY c.CustomerID;
