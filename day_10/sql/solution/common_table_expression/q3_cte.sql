-- 03) Use a CTE to show each product’s total sales amount (Price × Quantity).

WITH ProductSales AS (
    SELECT 
        P.ProductName,
        SUM(O.Quantity * P.Price) AS Total_Sales
    FROM Orders O
    JOIN Products P ON O.ProductID = P.ProductID
    GROUP BY P.ProductName
)
SELECT * FROM ProductSales ORDER BY Total_Sales DESC;
