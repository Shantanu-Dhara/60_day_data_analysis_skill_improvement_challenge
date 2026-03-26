-- 1) Top 5 Customers by Spending Which customers generate the most revenue for the company?

SELECT 
c.customer_id,
c.first_name,
SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name
ORDER BY total_spent DESC
LIMIT 5;

-- 2) Top 5 Products by Revenue Which products are driving company sales?

SELECT 
p.name,
SUM(oi.quantity * oi.unit_price) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.name
ORDER BY revenue DESC
LIMIT 5;

-- 3) Average Order Value

SELECT 
AVG(total_amount) AS avg_order_value
FROM orders;

-- 4) Most Popular Category
SELECT 
c.name AS category,
SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.name
ORDER BY total_sold DESC
LIMIT 1;

-- 5) Customers With More Than 3 Orders

select  c.first_name, c.customer_id, count(o.order_id) as total_orders
from orders o join customers c on o.customer_id = c.customer_id
group by customer_id 
having count(order_id) > 3;

-- 6) Monthly Sales Trend

SELECT 
DATE_FORMAT(order_date, '%Y-%m') AS month,
SUM(total_amount) AS monthly_sales
FROM orders
GROUP BY month
ORDER BY month;