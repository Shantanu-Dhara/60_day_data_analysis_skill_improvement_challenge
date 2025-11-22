-- 1174. Immediate Food Delivery II

with first_order as (
    select
        customer_id,
        order_date,
        customer_pref_delivery_date,
        row_number() over(partition by customer_id order by order_date) as rn
    from delivery
)
select
    round(
        sum(case when customer_pref_delivery_date = order_date then 1 else 0 end) 
        / count(*) * 100, 
        2
    ) as immediate_percentage
from first_order
where rn = 1;
