-- 02) CTE to Calculate Total Revenue by Customer, Then Rank Them

WITH revenue_cte AS (
    SELECT 
        c.CustomerID,
        c.Name,
        SUM(p.Price * o.Quantity) AS Total_Revenue
    FROM Orders o
    JOIN Customers c ON o.CustomerID = c.CustomerID
    JOIN Products p ON o.ProductID = p.ProductID
    GROUP BY c.CustomerID, c.Name
)
SELECT Name, Total_Revenue,
    RANK() OVER (ORDER BY Total_Revenue DESC) AS Revenue_Rank
FROM revenue_cte;

