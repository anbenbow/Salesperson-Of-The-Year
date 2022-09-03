-- Problem 1 & 2
-- 1. Using JOINs in a single query, combine data from all three tables (employees, products, sales) to view all sales with complete employee and product information in one table.
CREATE VIEW employee_sales AS SELECT * FROM employees LEFT JOIN sales ON employees.EmployeeID= sales.SalesPersonID;
-- 2a. Create a View for the query you made in Problem 1 named "all_sales"
-- NOTE: You'll want to remove any duplicate columns to clean up your view!
 
ALTER TABLE products RENAME COLUMN ProductID TO Product_ID;
-- error when attempting to join. different number of columns
CREATE VIEW all_sales AS SELECT * FROM employee_sales LEFT JOIN products ON employee_sales.ProductID=products.Product_ID;

-- 2b. Test your View by selecting all rows and columns from the View
SELECT * FROM all_sales;
-- Problem 3
-- Find the average sale amount for each sales person

-- Problem 4
-- Find the top three sales persons by total sales
SELECT firstName, LastName, COUNT(*) as total_sales_by_employee FROM all_sales GROUP BY FirstName ORDER BY COUNT(FirstName) DESC LIMIT 3;
-- Problem 5
-- Find the product that has the highest price
SELECT name, price FROM all_sales ORDER BY price DESC LIMIT 1;
-- Problem 6
-- Find the product that was sold the most times
SELECT name, COUNT(*) as product_sold_most FROM all_sales GROUP BY name ORDER BY COUNT(name) DESC LIMIT 3;
-- Problem 7
-- Using a subquery, find all products that have a price higher than the average price for all products
SELECT avg(price) FROM all_sales; 
-- 528.21
SELECT name, price FROM all_sales WHERE price IN (SELECT price FROM all_sales WHERE price > 528.21) ORDER BY price;
-- Problem 8
-- Find the customer who spent the most money in purchased products
SELECT CustomerID, COUNT(*) as most_frequent_customer FROM all_sales GROUP BY CustomerID ORDER BY COUNT(CustomerID) DESC LIMIT 3;
-- Problem 9
-- Find the total number of sales for each sales person
SELECT firstName, LastName, COUNT(*) as total_sales_by_employee FROM all_sales GROUP BY FirstName ORDER BY COUNT(FirstName);
-- Problem 10
-- Find the sales person who sold the most to the customer you found in Problem 8
SELECT CustomerID, quantity, salespersonID, firstname, lastname, COUNT(*) as most_frequent_customer FROM all_sales GROUP BY CustomerID ORDER BY COUNT(CustomerID) DESC, QUANTITY DESC LIMIT 1;


SELECT name, price FROM all_sales ORDER BY price DESC LIMIT 1;
SELECT firstName, LastName, COUNT(*) as total_sales_by_employee FROM all_sales GROUP BY FirstName ORDER BY COUNT(FirstName) DESC LIMIT 3;
SELECT name, COUNT(*) as product_sold_most FROM all_sales GROUP BY name ORDER BY COUNT(name) DESC LIMIT 3;
SELECT avg(price) FROM all_sales;
-- 528.21
SELECT name, price FROM all_sales WHERE price IN (SELECT price FROM all_sales WHERE price > 528.21) ORDER BY price;
SELECT CustomerID, quantity, COUNT(*) as most_frequent_customer FROM all_sales GROUP BY CustomerID ORDER BY COUNT(CustomerID) DESC, QUANTITY DESC LIMIT 3;
SELECT firstName, LastName, COUNT(*) as total_sales_by_employee FROM all_sales GROUP BY FirstName ORDER BY COUNT(FirstName);
-- SELECT avg(count(*)) FROM all_sales ORDER BY firstname;
SELECT CustomerID, quantity, salespersonID, firstname, lastname, COUNT(*) as most_frequent_customer FROM all_sales GROUP BY CustomerID ORDER BY COUNT(CustomerID) DESC, QUANTITY DESC LIMIT 1;
SELECT ProductID, name, quantity, price FROM all_sales GROUP BY name ORDER BY Quantity DESC, price DESC;
SELECT DISTINCT name, price FROM all_sales WHERE price = 0;