SELECT name, area FROM largestcities WHERE area > 4000;

SELECT name, area FROM largestcities WHERE area BETWEEN 2000 AND 4000;

SELECT name, area FROM largestcities WHERE name IN ('Delhi', 'Shanghai');

SELECT name, area FROM largestcities WHERE name NOT IN ('Delhi', 'Shanghai');

SELECT name, area FROM largestcities WHERE area NOT IN (3043, 8223) AND name='Delhi';

SELECT name, area FROM largestcities WHERE area NOT IN (3043, 8223) OR name='Delhi';
-- Comparison Math Operators
-- =
-- >
-- <
-- >=
-- <=
-- <>   not equal
-- !=
-- BETWEEN
-- IN
-- NOT IN