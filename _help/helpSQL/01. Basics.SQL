--- SELECT / SELECT DISTINCT --
SELECT column_name1, column_name2 FROM table_name; -- Retrieve just a subset of records.
SELECT DISTINCT column_name1, column_name2 FROM table_name; -- Eliminate all duplicate records and return only unique ones.

-- WHERE --
SELECT column_list FROM table_name WHERE condition; -- Extract only those records that fulfill a specified criterion

-- LIMIT --
SELECT ID, FirstName, LastName, City FROM customers LIMIT 4; --  Pick up four records.
SELECT ID, FirstName, LastName, City FROM customers LIMIT 3, 4; --  Pick up four records, starting from the third position.

/* Multiline
   comments */
