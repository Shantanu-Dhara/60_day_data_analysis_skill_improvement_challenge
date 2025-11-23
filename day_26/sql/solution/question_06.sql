-- 06) Products Never Ordered (Using LEFT JOIN)

SELECT 
    p.ProductName
FROM Products p
LEFT JOIN Orders o ON p.ProductID = o.ProductID
WHERE o.OrderID IS NULL;

