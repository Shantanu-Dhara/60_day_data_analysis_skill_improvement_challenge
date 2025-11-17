-- Question 5. Find customers who have never ordered anything (LEFT JOIN + NULL check)

select 
    c.customerid,
    c.name,
    c.city
from customers c
left join orders o on c.customerid = o.customerid
where o.orderid is null;
