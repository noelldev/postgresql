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
-- <>   not equal (its like exluding the given)
-- !=
-- BETWEEN
-- IN
-- NOT IN

 -- ex.
 SELECT name, manufacturer FROM phone WHERE manufacturer='Samsung' OR manufacturer='Apple';
 SELECT name, manufacturer FROM phone WHERE manufacturer IN ('Apple', 'Samsung');

 --calculated columns
 SELECT name, population / area AS population_density
 FROM largestcities
 WHERE population / area > 6000;

 SELECT name, price*units_sold AS total_revenue FROM phones where price*units_sold > 1000000;