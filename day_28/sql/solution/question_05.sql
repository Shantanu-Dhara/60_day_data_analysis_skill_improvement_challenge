-- 05) Monthly Revenue Summary (CTE + GROUP BY)

WITH monthly_cte AS (
    SELECT 
        DATE_FORMAT(o.OrderDate, '%Y-%m') AS Order_Month,
        SUM(p.Price * o.Quantity) AS Monthly_Revenue
    FROM Orders o
    JOIN Products p ON o.ProductID = p.ProductID
    GROUP BY DATE_FORMAT(o.OrderDate, '%Y-%m')
)
SELECT * FROM monthly_cte;

