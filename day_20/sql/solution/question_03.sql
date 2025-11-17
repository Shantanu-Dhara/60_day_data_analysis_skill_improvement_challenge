-- Question 3. Find customers who spent above the average spending (Subquery)

select name, city, total_spent
from (
    select 
        c.name,
        c.city,
        sum(o.quantity * p.price) as total_spent
    from customers c
    join orders o on c.customerid = o.customerid
    join products p on o.productid = p.productid
    group by c.customerid
) t
where total_spent > (select avg(quantity * price) from orders o join products p on o.productid = p.productid);
