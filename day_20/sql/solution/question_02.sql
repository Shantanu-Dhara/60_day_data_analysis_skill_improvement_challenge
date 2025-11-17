-- Question 2. Find the most expensive order per customer (Window Function – ROW_NUMBER)

with order_values as (
    select 
        c.name,
        p.productname,
        (o.quantity * p.price) as order_value,
        row_number() over(partition by c.customerid order by (o.quantity * p.price) desc) as rn
    from customers c
    join orders o on c.customerid = o.customerid
    join products p on o.productid = p.productid
)
select name, productname, order_value
from order_values
where rn = 1;
