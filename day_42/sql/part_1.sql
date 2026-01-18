-- Q1) Display only distinct product categories ?

select distinct `Product Category` from retail_db.retail_sales_dataset;

-- Q2) Find transactions where: Product category is Clothing ?

select * from retail_db.retail_sales_dataset where `Product Category` = "Clothing";