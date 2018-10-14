-- This comment continues to the end of line
/* this is an in-line or multiple-line comment */ there continue the sql

SELECT DISTINCT column_name1, column_name2 FROM table_name; -- Eliminate all duplicate records and return only unique ones.

SELECT column list FROM table_name LIMIT [number of records]; -- retrieve just a subset of records

SELECT ID, FirstName, LastName, City FROM customers LIMIT 3, 4; --  pick up four records, starting from the third position

SELECT column_list FROM table_name WHERE condition; -- Extract only those records that fulfill a specified criterion
| = | != | < | > | <= | >= | BEETWEEN | -- BEETWEEN valu1 AND value2

SELECT * FROM customers WHERE City IN ('New York', 'Los Angeles', 'Chicago'); --The IN operator is used when you want to compare a column with more than one value.

SELECT CONCAT(FirstName,', ', City) AS new_column FROM customers; -- CONCAT takes to or more values and create a new column

/* FUNCTIONS */
UPPER(str) LOWER(str) SQRT(int) AVG(int) SUM(int) -- Average and summation returns one value from a full int column
