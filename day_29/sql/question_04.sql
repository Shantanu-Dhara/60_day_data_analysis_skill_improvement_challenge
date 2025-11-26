-- 04)	Rank products by total sales within each category:

SELECT Product, ProductCategory,
	SUM(SalesValue) AS TotalSales,
	RANK() OVER (PARTITION BY ProductCategory ORDER BY SUM(SalesValue) DESC) AS SalesRank
FROM chat_gpt.sales_data_100rows
GROUP BY Product, ProductCategory;
