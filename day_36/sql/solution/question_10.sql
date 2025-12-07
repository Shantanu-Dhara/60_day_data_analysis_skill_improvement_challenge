-- 10) Monthly order count for 2024

SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS Month, COUNT(*) AS OrderCount
FROM Orders
GROUP BY Month
ORDER BY Month;
