-- Q7) Find transactions where: Customer ID starts with 'CUST' ?

select * from retail_db.retail_sales_dataset where 'Customer ID' like "%CUST%";

-- Q8) Display top 10 highest sales transactions ?

select * from retail_db.retail_sales_dataset order by `Total Amount` desc limit 10;

-- Q9) Show latest 10 transactions by date ?

select * from retail_db.retail_sales_dataset order by Date desc limit 10;