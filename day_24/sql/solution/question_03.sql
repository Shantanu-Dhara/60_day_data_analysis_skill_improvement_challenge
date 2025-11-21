-- 03) Display customers and show how many total orders exist in the system (Window Function – COUNT OVER)

SELECT
    c.Name,
    COUNT(o.OrderID) AS OrdersByCustomer,
    COUNT(*) OVER() AS TotalOrdersInSystem
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.Name;



