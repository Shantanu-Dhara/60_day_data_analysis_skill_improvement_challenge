-- 04) Month-wise sales trend (total revenue per month)

SELECT 
    DATE_FORMAT(o.OrderDate, '%Y-%m') AS SalesMonth,
    SUM(p.Price * o.Quantity) AS TotalRevenue
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY DATE_FORMAT(o.OrderDate, '%Y-%m')
ORDER BY SalesMonth;
