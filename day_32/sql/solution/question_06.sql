-- 06) Get latest 3 orders (ORDER BY + LIMIT)

SELECT * FROM Orders
ORDER BY OrderDate DESC
LIMIT 3;
