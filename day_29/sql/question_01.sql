-- 01) Total sales and total profit per region:

select Region, sum(SalesValue) as TotalSales, sum(Profit) as TotalProfit
from chat_gpt.sales_data_100rows group by Region order by TotalSales desc; 
