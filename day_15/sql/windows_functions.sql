-- ____________ Window Functions ____________

-- Partition by________________________________________________ it used to give partition group wise 
select Product_Name,Order_Date,count(Revenue_Amount) over (partition by Product_Name) from practice.practice_amount;

-- Row_Number________________________________________________ it used to give row number based on the partition 
select Name,Department,Salary, row_number() over (partition by Department order by Salary desc) as Ranking from employee1;
select *,row_number() over (partition by Class order by Year desc) from practice.bigfoot;
select *,row_number() over (order by Year desc) from practice.bigfoot;

-- Rank________________________________________________ rank used to give rank and it skips rank
select *, rank() over (order by age) as ranks from college.students;
select Name,Department,Salary, rank() over (order by Salary desc) as Ranking_Salary from employee1;
select *,rank() over (partition by age order by marks desc) from college.students;


-- Dense Rank________________________________________________ Dense rank used to give rank and it not skips rank
select *, dense_rank() over (order by age) as ranks from college.students;
select Name,Department,Salary, dense_rank() over (order by Salary desc) as Ranking_Salary from employee1;
select *,dense_rank() over (partition by age order by marks desc) from college.students;


-- LAG = It gives the previous cell value ____________ LEAD =  It gives the previous cell value______________ 
SELECT Order_Date,Revenue_Amount,
    LAG(Revenue_Amount) OVER (ORDER BY Order_Date) AS prev_month,
    LEAD(Revenue_Amount) OVER (ORDER BY Order_Date) AS next_month
FROM practice_amount;


-- NTILE________________________________________________ It used to devide data in groups
SELECT 
    Name,
    Revenue_Amount,
    NTILE(4) OVER (ORDER BY Revenue_Amount DESC) AS salary_quartile
FROM practice.practice_amount;

-- First value = Give the first value____last value = It give the last value____________________________
SELECT Department, Name, Salary,
FIRST_VALUE(Name) OVER (PARTITION BY Department ORDER BY Salary DESC) AS high_employee,
LAST_VALUE(Name) OVER (PARTITION BY Department ORDER BY Salary DESC ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS low_employee
FROM employee1;

-- First value
SELECT Department, Name, Salary,
FIRST_VALUE(Name) OVER (PARTITION BY Department ORDER BY Salary DESC ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS top_employee
FROM employee1;

-- last value
SELECT Department, Name, Salary,
LAST_VALUE(Name) OVER (PARTITION BY Department ORDER BY Salary DESC ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS low_employee
FROM employee1;

-- Aggregation funtion as window function

select *, max(Salary) over (partition by Department order by Salary desc) from practice.employee1;

