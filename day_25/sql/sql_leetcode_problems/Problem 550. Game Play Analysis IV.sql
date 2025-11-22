-- 550. Game Play Analysis IV

with first_login as (
    select
        player_id,
        min(event_date) as first_day
    from activity
    group by player_id
)
select
    round(
        sum(
            case 
                when exists (
                    select 1
                    from activity a
                    where a.player_id = f.player_id
                    and a.event_date = date_add(f.first_day, interval 1 day)
                ) 
                then 1 else 0 
            end
        ) / count(*),
        2
    ) as fraction
from first_login f;