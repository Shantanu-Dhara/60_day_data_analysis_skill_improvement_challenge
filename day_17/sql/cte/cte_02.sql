-- 02) Find the most expensive order (based on total price per order).

with expensive_order as (
select products.ProductName, sum(products.Price * orders.Quantity) as total_price
from products join orders on products.ProductID = orders.ProductID
group by products.ProductName order by total_price desc	limit 1)
select * from expensive_order;

WITH OrderTotals AS (
    SELECT 
        O.OrderID,
        SUM(P.Price * O.Quantity) AS OrderTotal
    FROM Orders O
    JOIN Products P ON O.ProductID = P.ProductID
    GROUP BY O.OrderID
)
SELECT * 
FROM OrderTotals
WHERE OrderTotal = (SELECT MAX(OrderTotal) FROM OrderTotals);

