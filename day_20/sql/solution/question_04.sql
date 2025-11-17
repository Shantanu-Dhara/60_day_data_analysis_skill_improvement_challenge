-- Question 4. Find each product's rank based on total quantity sold (Window Function – RANK)

select 
    productname,
    total_qty,
    rank() over(order by total_qty desc) as sales_rank
from (
    select 
        p.productname,
        sum(o.quantity) as total_qty
    from products p
    left join orders o on p.productid = o.productid
    group by p.productname
) x;
