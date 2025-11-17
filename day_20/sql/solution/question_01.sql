-- Question 1. Find total spending of each customer (JOIN + Aggregation)

select 
    c.name,
    c.city,
    sum(o.quantity * p.price) as total_spent
from customers c
join orders o on c.customerid = o.customerid
join products p on o.productid = p.productid
group by c.name, c.city;
