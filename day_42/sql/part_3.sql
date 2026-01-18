-- Q5) Show transactions where: Category is Beauty OR Electronics ?

select * from retail_db.retail_sales_dataset where  `Product Category` = "Beauty" or   `Product Category` = "Electronics";

-- Q6) Exclude customers whose age is NOT between 20 and 40 ?

select * from retail_db.retail_sales_dataset where Age not between "20" and "40";