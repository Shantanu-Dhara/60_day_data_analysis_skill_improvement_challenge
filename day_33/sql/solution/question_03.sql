-- Q3) Which product category generated the most revenue?

SELECT p.Category,
       SUM(p.Price * o.Quantity) AS CategoryRevenue
FROM Products p
JOIN Orders o ON o.ProductID = p.ProductID
GROUP BY p.Category
ORDER BY CategoryRevenue DESC;
