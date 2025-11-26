-- 03) Which are the top 3 product category generate the highest sales 

select ProductCategory, sum(SalesValue) as bestPerformingCategory from chat_gpt.sales_data_100rows 
group by ProductCategory order by bestPerformingCategory desc limit 3;