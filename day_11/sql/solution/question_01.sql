-- 01) Display customers with a label based on city

SELECT 
    Name,
    City,
    CASE 
        WHEN City = 'Kolkata' THEN 'East Zone'
        WHEN City = 'Delhi' THEN 'North Zone'
        ELSE 'Other Zone'
    END AS Zone
FROM Customers;
