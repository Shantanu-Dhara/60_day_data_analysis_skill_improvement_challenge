-- 02) City-Wise Total Number of Orders

SELECT 
    c.City,
    COUNT(o.OrderID) AS Total_Orders
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.City;

