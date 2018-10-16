-- WHILECARDS --
... WHERE col LIKE 'Lis%' -- Return all the words that starts with Lis.
... WHERE col LIKE 'dro%' -- Return all the words that finish with dro.
... WHERE col LIKE 'L%o' -- Return all the words that starts with L and finish with o.
-- Wildcards are slow. Avoid them when posible
/* OTHER VERSIONS */
-- In other versions of SQUL is used the _ instead of % or maybe []
