-- NORMAL JOIN --
SELECT customers.ID, customers.Name, orders.Name, orders.Amount
FROM customers, orders
WHERE customers.ID = orders.Customer_ID
ORDER BY customers.ID;

-- INNER JOIN / JOIN --
SELECT column_name(s)
FROM table1 INNER JOIN table2
ON table1.column_name=table2.column_name; -- ON keyword specified the inner join condition.

-- LEFT JOIN / LEFT OUTER JOIN -- -- RIGHT JOIN / RIGHT OUTER JOIN --
SELECT table1.column1, table2.column2...
FROM table1 LEFT OUTER JOIN table2
ON table1.column_name = table2.column_name;

-- UNION / UNION ALL--
SELECT column_name(s) FROM table1
UNION --The UNION operator is used to combine the result-sets of two or more SELECT statements.
SELECT column_name(s) FROM table2;
-- UNION  removes any existing duplicates -- UNION ALL does not remove duplicate rows.
/* All SELECT statements within the UNION must have the same number of columns.
The columns must also have the same data types and the columns in each SELECT statement must be in the same order.
If your columns don't match exactly across all queries, you can use a NULL (or any other) value such as:
SELECT FirstName, LastName, Company FROM businessContacts
UNION
SELECT FirstName, LastName, NULL FROM otherContacts;*/
