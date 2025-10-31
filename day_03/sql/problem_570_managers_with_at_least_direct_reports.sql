-- Problem 570. Managers with at Least 5 Direct Reports

select a.name from Employee a join Employee b 
on a.id = b.managerId 
group by a.id, a.name 
having count(b.id) >= 5;
