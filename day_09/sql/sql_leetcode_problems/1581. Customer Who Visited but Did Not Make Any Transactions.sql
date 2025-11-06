-- Problem 1581. Customer Who Visited but Did Not Make Any Transactions

select Visits.customer_id,count(Visits.visit_id) as count_no_trans from Visits left join Transactions on
Visits.visit_id = Transactions.visit_id where transaction_id is null
group by customer_id;
-- -- _______________________________