-- ============================================
-- Superstore Sales Analysis
-- Author: Hoor Soomro
-- ============================================

-- 1. Total Sales
SELECT SUM(Sales) AS total_sales
FROM train_csv;

-- 2. Sales by State
SELECT State, SUM(Sales) AS total_sales
FROM train_csv
GROUP BY State
ORDER BY total_sales DESC;

-- 3. Sales by Category
SELECT Category, SUM(Sales) AS total_sales
FROM train_csv
GROUP BY Category
ORDER BY total_sales DESC;

-- 4. Sales by Sub-Category
SELECT "Sub-Category", SUM(Sales) AS total_sales
FROM train_csv
GROUP BY "Sub-Category"
ORDER BY total_sales DESC;

-- 5. California City Analysis
SELECT City, SUM(Sales) AS total_sales
FROM train_csv
WHERE State = 'California'
GROUP BY City
ORDER BY total_sales DESC;

-- 6. California Customer Analysis
SELECT "Customer Name", SUM(Sales) AS total_sales
FROM train_csv
WHERE State = 'California'
GROUP BY "Customer Name"
ORDER BY total_sales DESC;

-- 7. Sales by Segment
SELECT Segment, SUM(Sales) AS total_sales
FROM train_csv
GROUP BY Segment
ORDER BY total_sales DESC;

-- 8. Sales by Year
SELECT YEAR("Order Date") AS Year,
       SUM(Sales) AS total_sales
FROM train_csv
GROUP BY YEAR("Order Date")
ORDER BY total_sales DESC;

-- 9. Sales by Year and Month
SELECT YEAR("Order Date") AS Year,
       MONTH("Order Date") AS Month,
       SUM(Sales) AS total_sales
FROM train_csv
GROUP BY YEAR("Order Date"), MONTH("Order Date")
ORDER BY total_sales DESC;

-- 10. Average Shipping Time
SELECT AVG("Ship Date" - "Order Date") AS avg_shipping_days
FROM train_csv;

-- 11. Shipping Performance by Ship Mode
SELECT "Ship Mode",
       AVG("Ship Date" - "Order Date") AS avg_shipping_days
FROM train_csv
GROUP BY "Ship Mode"
ORDER BY avg_shipping_days ASC;
