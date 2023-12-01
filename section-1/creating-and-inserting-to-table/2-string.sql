SELECT name || ', ' || country AS location FROM largestcities;

SELECT CONCAT(name, ', ', country) AS location FROM largestcities;

SELECT CONCAT(UPPER(name), ', ', UPPER(country)) AS location FROM largestcities;

SELECT UPPER(CONCAT((name), ', ', (country))) AS location FROM largestcities;