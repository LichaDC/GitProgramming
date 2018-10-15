-- ALTER TABLE --
-- Add, delete, or modify columns in an existing table.

ALTER TABLE People ADD DateOfBirth date; -- Adds a new column named DateOfBirth:

ALTER TABLE People DROP COLUMN DateOfBirth; -- Delete the column named DateOfBirth in the People table

ALTER TABLE People CHANGE FirstName name varchar(100); -- Rename the column called FirstName to name.


DROP TABLE -- Delete the full table

RENAME TABLE People TO Users; -- Rename table called People to Users
