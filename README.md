 Salesperson-Of-The-Year

 -- ALTER TABLE employees ADD COLUMN AmountSold varchar(1000);
REPLACE VIEW employee_sales AS SELECT * FROM employees LEFT JOIN sales ON employees.EmployeeID= sales.SalesPersonID;
-- ALTER TABLE products RENAME COLUMN ProductID TO Product_ID;
CREATE VIEW all_sales AS SELECT * FROM employee_sales LEFT JOIN products ON employee_sales.ProductID=products.Product_ID;

SELECT * FROM all_sales;