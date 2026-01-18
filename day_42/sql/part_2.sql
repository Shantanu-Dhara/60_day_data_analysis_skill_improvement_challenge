-- Q3) Find customers aged between 25 and 35 

select * from retail_db.retail_sales_dataset where Age between "25" and "35";

-- Q4) Show transactions where: Gender is Female AND Total Amount > 500 ?

select * from retail_db.retail_sales_dataset where Gender = "Female" and `Total Amount` > 500;