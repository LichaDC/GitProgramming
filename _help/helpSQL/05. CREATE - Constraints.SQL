-- CREATE TABLE --
CREATE TABLE table_name
(
column_name1 data_type(size),
column_name2 data_type(size),
column_name3 data_type(size),
....
columnN data_type(size)
);

--Example
CREATE TABLE Users (
id int NOT NULL AUTO_INCREMENT,
username varchar(40) NOT NULL,
password varchar(10) NOT NULL,
PRIMARY KEY(id)
);

-- SQL Constraints --
NOT NULL -- Indicates that a column cannot contain any NULL value.
UNIQUE -- Does not allow to insert a duplicate value in a column. More than one UNIQUE column can be used in a table.
PRIMARY KEY -- Enforces the table to accept unique data for a specific column and this constraint create a unique index for accessing the table faster.
CHECK -- Determines whether the value is valid or not from a logical expression.
DEFAULT -- While inserting data into a table, if no value is supplied to a column, then the column gets the value set as DEFAULT.
AUTO_INCREMENT -- By default, the starting value is 1, and it will increment by 1 for each new record.
