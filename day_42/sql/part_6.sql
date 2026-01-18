-- Q13) Count total number of transactions ?

select count(`Transaction ID`) as Total_Number_of_Transaction from retail_db.retail_sales_dataset;

-- Q14) Find total revenue per product category ?

select `Product Category`, sum(`Total Amount`) as Category_Wise_Revenue from retail_db.retail_sales_dataset 
group by `Product Category`;

-- Q15) Show product categories where total sales > 150,000 ?

select `Product Category`, sum(`Total Amount`) as Category_Wise_Revenue from retail_db.retail_sales_dataset 
group by `Product Category` having Category_Wise_Revenue > 150000;



