CREATE TABLE largestcities (
    name VARCHAR(50), 
  country VARCHAR(50),
  population INTEGER,
  area INTEGER
);

INSERT INTO largestcities (name, country, population, area)
VALUES ('Tokyo', 'Japan', 38505000, 8223);

INSERT INTO largestcities (name, country, population, area)
VALUES 
  ('Delhi', 'India', 28125000, 2240),
  ('Shanghai', 'China', 22125000, 4015),
  ('Sao Paulo', 'Brazil', 20935000, 3043);

UPDATE your_table
SET area = new_area_value
WHERE name = 'Shanghai';

-- Selecting
SELECT * FROM largestcities;
SELECT name, name, name FROM largestcities;

-- Calculation
SELECT name, population / area FROM largestcities;

SELECT name, population / area AS density FROM largestcities;

-- exercise
SELECT name, price * units_sold AS revenue FROM phones;

