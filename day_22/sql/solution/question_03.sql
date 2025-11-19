-- 03) Which product category brings in the highest revenue?

SELECT 
    p.Category,
    SUM(p.Price * o.Quantity) AS Revenue
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY p.Category
ORDER BY Revenue DESC;



