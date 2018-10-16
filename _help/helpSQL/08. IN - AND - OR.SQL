-- AND --
... WHERE condition1 AND condition2 -- Returns true only if both are true.

-- OR --
... WHERE condition1 OR condition2 -- Returns true if one of both are true.

/* ORDER */
... WHERE condition1 OR condition2 AND condition3 -- The AND is always analyced before the or.
... WHERE (condition1 OR condition2) AND condition3 -- Is good to use parenthesis to sure the order.

-- IN --
... WHERE condition1 OR condition2 OR condition3 -- It's lower than:
... WHERE col IN (value1, value2, value3) -- IN search where the col is equal to one of the given values.

SELECT name
FROM Artists
WHERE name LIKE ‘K%’;
