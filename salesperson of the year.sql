-- SELECT * FROM employees LEFT JOIN sales ON employees.EmployeeID= sales.SalesPersonID;
-- UNION
-- SELECT * FROM sales LEFT JOIN products ON sales.ProductID=products.ProductID;
-- CREATE VIEW employee_sales AS SELECT * FROM employees LEFT JOIN sales ON employees.EmployeeID= sales.SalesPersonID;
-- CREATE VIEW product_sales AS SELECT * FROM sales LEFT JOIN products ON sales.ProductID=products.ProductID;
SELECT * FROM product_sales;