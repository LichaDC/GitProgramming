-- VIEWS --
/* A VIEW is a virtual table that is based on  one or more real tables in the database. */
CREATE VIEW view_name AS
SELECT column_name(s)
FROM table_name
WHERE condition;
/* After create it query the view*/
SELECT * FROM view_name;

-- UPDATE LIST --
REPLACE VIEW view_name AS
SELECT column_name(s)
FROM table_name
WHERE condition;

DROP VIEW List; -- Delete the view.
