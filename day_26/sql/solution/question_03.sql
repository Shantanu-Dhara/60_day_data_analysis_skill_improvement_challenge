-- 03) Highest Revenue-Generating Product Category

SELECT 
    p.Category,
    SUM(p.Price * o.Quantity) AS Total_Revenue
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY p.Category
ORDER BY Total_Revenue DESC
LIMIT 1;




