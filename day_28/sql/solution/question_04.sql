-- 04) Find Top-Selling Product in Each Category (CTE + Window Function)

WITH sales_cte AS (
    SELECT 
        p.Category,
        p.ProductName,
        SUM(o.Quantity) AS Total_Sold,
        RANK() OVER (PARTITION BY p.Category ORDER BY SUM(o.Quantity) DESC) AS Sales_Rank
    FROM Orders o
    JOIN Products p ON o.ProductID = p.ProductID
    GROUP BY p.Category, p.ProductName
)
SELECT *
FROM sales_cte
WHERE Sales_Rank = 1;


