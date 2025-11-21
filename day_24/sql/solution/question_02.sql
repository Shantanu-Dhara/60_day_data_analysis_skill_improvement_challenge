-- 02) Show each order value and the cumulative total revenue for that customer

SELECT
    c.Name,
    o.OrderID,
    (p.Price * o.Quantity) AS OrderAmount,
    SUM(p.Price * o.Quantity) OVER(PARTITION BY c.CustomerID ORDER BY o.OrderDate) AS CumulativeRevenue
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Products p ON o.ProductID = p.ProductID;

