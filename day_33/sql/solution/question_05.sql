-- Q5) Get the month-wise revenue trend.

SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS OrderMonth,
       SUM(p.Price * o.Quantity) AS MonthlyRevenue
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY OrderMonth
ORDER BY OrderMonth;
