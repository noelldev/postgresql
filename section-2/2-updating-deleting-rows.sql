UPDATE largestcities
SET population=39505000 WHERE name= 'Tokyo';
--if more specific
UPDATE largestcities
SET population=39505000 WHERE name= 'Tokyo' AND country='Japan'; --case sensitive, it will not update if misplelled


DELETE FROM largestcities
WHERE name='Tokyo';

INSERT INTO largestcities (name, country, population, area)
VALUES ('Tokyo', 'Japan', 38505000, 8223)
