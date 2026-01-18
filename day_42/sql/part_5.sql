-- Q10) Find total sales revenue ?
 
select sum(`Total Amount`) as Total_Sales_Revenue from retail_db.retail_sales_dataset;

-- Q11) Find average customer age ?

select avg(Age) as Average_Customer_Age from retail_db.retail_sales_dataset;
 
-- Q12) Find maximum and minimum total amount ?

select max(Age) as Average_Customer_Age from retail_db.retail_sales_dataset;
select min(Age) as Average_Customer_Age from retail_db.retail_sales_dataset;
 