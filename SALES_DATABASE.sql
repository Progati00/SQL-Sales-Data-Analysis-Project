use sales;
select * from sales_data_sample;

-- Top 20 Sales Data for the Year 2004
SELECT * FROM sales_data_sample WHERE YEAR_ID = 2004
ORDER BY SALES DESC 
LIMIT 20;

-- Sales Data Where Year is 2005 and Status is Shipped
SELECT * FROM sales_data_sample WHERE YEAR_ID = 2005 AND STATUS = 'Shipped';

-- Sales Data Where City is NYC or Paris
SELECT * FROM sales_data_sample WHERE CITY = 'NYC' OR CITY = 'Paris';

-- Sales Data Where Country is in USA, UK, or Spain
SELECT * FROM sales_data_sample WHERE COUNTRY IN ('USA', 'UK', 'Spain');

-- Sales Data Where Sales is Between 3000 and 7000
SELECT * FROM sales_data_sample WHERE SALES BETWEEN 3000 AND 7000;

-- Sales Data Where Customer Name Starts with 'A'
SELECT * FROM sales_data_sample WHERE CUSTOMERNAME LIKE 'A%';

-- Total and Average Sales by Country
SELECT COUNTRY, SUM(SALES) AS TotalSales, AVG(SALES) AS AvgSales
FROM sales_data_sample
GROUP BY COUNTRY
HAVING SUM(SALES) > 5000;

-- Customer Full Name
SELECT CUSTOMERNAME, CONCAT(CONTACTFIRSTNAME, ' ', CONTACTLASTNAME) AS FullName
FROM sales_data_sample;

-- Sales Rounded Up
SELECT SALES, CEIL(SALES) AS CeilSales FROM sales_data_sample;

-- Sales Rounded Down
SELECT SALES, FLOOR(SALES) AS FloorSales FROM sales_data_sample;

-- Sales Rounded to Two Decimal Places
SELECT SALES, ROUND(SALES, 2) AS RoundedSales 
FROM sales_data_sample;

-- Sales Category Based on Amount
SELECT ORDERNUMBER, CITY, STATE, COUNTRY, SALES,
       CASE 
           WHEN SALES > 7000 THEN 'High'
           WHEN SALES BETWEEN 4000 AND 7000 THEN 'Medium'
           ELSE 'Low'
       END AS SalesCategory
FROM sales_data_sample;

-- Address Line 2 or Default Message
SELECT ORDERNUMBER, COALESCE(ADDRESSLINE2, 'No Address') AS FullAddress
FROM sales_data_sample;

-- Count of Orders by Status
SELECT STATUS, COUNT(*) AS OrderCount
FROM sales_data_sample
GROUP BY STATUS;

-- Orders Grouped by Quarter
SELECT QTR_ID, COUNT(*) AS OrdersPerQuarter
FROM sales_data_sample
GROUP BY QTR_ID;

-- Orders Grouped by Month
SELECT MONTH_ID, COUNT(*) AS OrdersPerMonth
FROM sales_data_sample
GROUP BY MONTH_ID;

-- Total Sales Per Year
SELECT YEAR_ID, SUM(SALES) AS TotalSales
FROM sales_data_sample
GROUP BY YEAR_ID;

-- Assigning Row Numbers to Sales Data
SELECT ORDERNUMBER, SALES, 
       ROW_NUMBER() OVER (ORDER BY SALES DESC) AS RowNum
FROM sales_data_sample;

-- Ranking Sales Data
SELECT ORDERNUMBER, SALES, 
       RANK() OVER (ORDER BY SALES DESC) AS RankNum
FROM sales_data_sample;

-- Dividing Sales Data into Quartiles
SELECT ORDERNUMBER, SALES, 
       NTILE(4) OVER (ORDER BY SALES DESC) AS Quartile
FROM sales_data_sample;

-- Previous Sale Value for Each Order
SELECT ORDERNUMBER, CITY, COUNTRY, SALES, 
LAG(SALES) OVER (ORDER BY SALES DESC) AS PreviousSale
FROM sales_data_sample;

-- Inner Join on Customer Name
SELECT A.ORDERNUMBER, A.CUSTOMERNAME, A.SALES, B.ORDERNUMBER AS MatchedOrder, B.SALES AS MatchedSales
FROM sales_data_sample A
INNER JOIN sales_data_sample B ON A.CUSTOMERNAME = B.CUSTOMERNAME;

-- Left Join on Customer Name
SELECT A.ORDERNUMBER, A.CUSTOMERNAME, A.SALES, B.ORDERNUMBER AS MatchedOrder, B.SALES AS MatchedSales
FROM sales_data_sample A
LEFT JOIN sales_data_sample B ON A.CUSTOMERNAME = B.CUSTOMERNAME;

-- Right Join on Customer Name
SELECT A.ORDERNUMBER, A.CUSTOMERNAME, A.SALES, B.ORDERNUMBER AS MatchedOrder, B.SALES AS MatchedSales
FROM sales_data_sample A
RIGHT JOIN sales_data_sample B ON A.CUSTOMERNAME = B.CUSTOMERNAME;

-- Full Join on Customer Name
SELECT A.ORDERNUMBER, A.CUSTOMERNAME, A.SALES, B.ORDERNUMBER AS MatchedOrder, B.SALES AS MatchedSales
FROM sales_data_sample A
LEFT JOIN sales_data_sample B ON A.CUSTOMERNAME = B.CUSTOMERNAME
UNION
SELECT A.ORDERNUMBER, A.CUSTOMERNAME, A.SALES, B.ORDERNUMBER AS MatchedOrder, B.SALES AS MatchedSales
FROM sales_data_sample A
RIGHT JOIN sales_data_sample B ON A.CUSTOMERNAME = B.CUSTOMERNAME;