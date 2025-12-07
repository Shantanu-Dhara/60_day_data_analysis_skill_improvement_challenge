-- 07) Get average quantity ordered per city

SELECT c.City, AVG(o.Quantity) AS AvgQuantity
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.City;
