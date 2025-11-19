1️⃣ Total Revenue
SELECT SUM(Quantity * Price) AS TotalRevenue
FROM retail_sales;

2️⃣ Monthly Revenue Trend
SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS Month,
       SUM(Quantity * Price) AS Revenue
FROM retail_sales
GROUP BY Month
ORDER BY Month;

3️⃣ Best-Selling Products
SELECT Product,
       SUM(Quantity) AS UnitsSold
FROM retail_sales
GROUP BY Product
ORDER BY UnitsSold DESC
LIMIT 10;

4️⃣ Top 10 Customers
SELECT CustomerName,
       SUM(Quantity * Price) AS Revenue
FROM retail_sales
GROUP BY CustomerName
ORDER BY Revenue DESC
LIMIT 10;

5️⃣ Region-Wise Revenue
SELECT Region,
       SUM(Quantity * Price) AS Revenue
FROM retail_sales
GROUP BY Region
ORDER BY Revenue DESC;

6️⃣ Total Orders
SELECT COUNT(OrderID) AS TotalOrders
FROM retail_sales;

7️⃣ Average Order Value
SELECT AVG(Quantity * Price) AS AverageOrderValue
FROM retail_sales;
