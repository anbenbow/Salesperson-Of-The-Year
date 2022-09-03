
-- SELECT name, price FROM all_sales ORDER BY price DESC LIMIT 1;
-- SELECT firstName, LastName, COUNT(*) as total_sales_by_employee FROM all_sales GROUP BY FirstName ORDER BY COUNT(FirstName) DESC LIMIT 3;
-- SELECT name, COUNT(*) as product_sold_most FROM all_sales GROUP BY name ORDER BY COUNT(name) DESC LIMIT 3;
-- SELECT avg(price) FROM all_sales;
-- SELECT name, price FROM all_sales WHERE price IN (SELECT price FROM all_sales WHERE price > 528.21) ORDER BY price;
-- SELECT CustomerID, quantity, COUNT(*) as most_frequent_customer FROM all_sales GROUP BY CustomerID ORDER BY COUNT(CustomerID) DESC, QUANTITY DESC LIMIT 3;
-- SELECT firstName, LastName, COUNT(*) as total_sales_by_employee FROM all_sales GROUP BY FirstName ORDER BY COUNT(FirstName);
SELECT CustomerID, quantity, salespersonID, firstname, lastname, COUNT(*) as most_frequent_customer FROM all_sales GROUP BY CustomerID ORDER BY COUNT(CustomerID) DESC, QUANTITY DESC LIMIT 1;