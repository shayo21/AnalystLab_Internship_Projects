WITH CustomerSales AS (
  SELECT
    PRODUCTLINE,
    CUSTOMERNAME,
    SUM(SALES) AS TotalSales
  FROM
    analystlab-week3.week_3_data.sales_data
   WHERE
    STATUS = 'Shipped'
  GROUP BY
    PRODUCTLINE,
    CUSTOMERNAME
),
RankedSales AS (
  SELECT
    PRODUCTLINE,
    CUSTOMERNAME,
    TotalSales,
    RANK() OVER(PARTITION BY PRODUCTLINE ORDER BY TotalSales DESC) AS SalesRank
  FROM
    CustomerSales
)
SELECT
  PRODUCTLINE,
  CUSTOMERNAME,
  TotalSales
FROM
  RankedSales
WHERE
  SalesRank = 1;


SELECT
  YEAR_ID,
  MONTH_ID,
  SUM(SALES) AS MonthlyRevenue,
  COUNT(DISTINCT ORDERNUMBER) AS TotalOrders
FROM
  analystlab-week3.week_3_data.sales_data
WHERE
  STATUS = 'Shipped'
GROUP BY
  YEAR_ID,
  MONTH_ID
ORDER BY
  YEAR_ID ASC,
  MONTH_ID ASC;

WITH Customers AS (
  SELECT DISTINCT customer_id, first_name, last_name
  FROM analystlab-week3.week_3_data.chinook_data
),
Invoices AS (
  SELECT DISTINCT invoice_id, customer_id, total
  FROM analystlab-week3.week_3_data.chinook_data
)
SELECT 
  c.first_name, 
  c.last_name, 
  SUM(i.total) AS TotalSpent
FROM 
  Customers c
JOIN 
  Invoices i 
  ON c.customer_id = i.customer_id
GROUP BY 
  c.first_name, 
  c.last_name
HAVING 
  SUM(i.total) > (
    SELECT AVG(total_per_customer) 
    FROM (
      SELECT SUM(total) AS total_per_customer 
      FROM Invoices 
      GROUP BY customer_id
    )
  )
ORDER BY 
  TotalSpent DESC;

SELECT
  name_y AS GenreName,
  SUM(unit_price_x * quantity) AS TotalRevenue,
  COUNT(invoice_line_id) AS TotalTracksSold
FROM
  analystlab-week3.week_3_data.chinook_data
GROUP BY
  name_y
ORDER BY
  TotalRevenue DESC
LIMIT 5;