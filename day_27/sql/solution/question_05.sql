-- 05) Latest Order Placed by Each Customer (Using MAX & GROUP BY)

SELECT 
    c.Name,
    MAX(o.OrderDate) AS Last_Purchase_Date
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.Name;

