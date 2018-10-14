-- UPDATE --
UPDATE table_name -- The UPDATE statement allows us to alter data in the table.
SET column1=value1, column2=value2, ...
WHERE condition;

UPDATE Employees
SET Salary=5000, FirstName='Robert'
WHERE ID=1;
-- It is also possible to UPDATE multiple columns at the same time by comma-separating them:

-- DELETE --
DELETE FROM table_name
WHERE condition; 
