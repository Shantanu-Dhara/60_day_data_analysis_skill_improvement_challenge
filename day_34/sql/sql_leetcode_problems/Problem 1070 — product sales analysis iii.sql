-- 3) LeetCode 1070 — product sales analysis iii

with first_year as (
    select 
        product_id,
        min(year) as first_year
    from sales
    group by product_id
)
select 
    s.product_id,
    f.first_year,
    s.quantity,
    s.price
from sales s
join first_year f
on s.product_id = f.product_id
and s.year = f.first_year;
