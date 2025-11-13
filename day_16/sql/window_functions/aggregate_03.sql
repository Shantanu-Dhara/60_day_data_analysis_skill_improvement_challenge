-- 🔥 Real-Life Industry Questions

-- Q3. Find top 3 customers by total spending using RANK() or DENSE_RANK().

select customers.Name, sum(orders.Quantity * products.Price) as total_spending,
dense_rank() over(order by sum(orders.Quantity * products.Price) desc) as spending_rank
from orders join products on orders.ProductID = products.ProductID
join customers on customers.CustomerID = orders.OrderID
group by customers.Name
order by spending_rank limit 3;













-- 2️⃣ Find monthly sales and compare each month’s sales with the previous month using LAG().
-- 3️⃣ Classify products as “High Price” or “Low Price” using CASE WHEN.

-- 5️⃣ Divide customers into 4 spending groups using NTILE(4).
