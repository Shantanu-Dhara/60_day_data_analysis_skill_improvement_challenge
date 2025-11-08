-- 03) Find customers who ordered Electronics or Fashion items

SELECT 
    DISTINCT c.Name,
    CASE 
        WHEN p.Category = 'Electronics' THEN 'Tech Buyer'
        WHEN p.Category = 'Fashion' THEN 'Style Buyer'
    END AS BuyerType
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Products p ON o.ProductID = p.ProductID;
