-- Problem 1934. Confirmation Rate

select Signups.user_id, round(ifnull(sum(case when confirmations.action = "confirmed" then 1 else 0 end) / count(Confirmations.action), 0), 2) as confirmation_rate 
from Signups left join Confirmations
on Signups.user_id = Confirmations.user_id 
group by Signups.user_id;

-- -- _______________________________