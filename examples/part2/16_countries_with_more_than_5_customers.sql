-- SELECT country, COUNT(id) FROM customer WHERE COUNT(id) > 5 GROUP BY country; -- WILL NOT WORK!!!

SELECT country, COUNT(id) FROM customer GROUP BY country HAVING COUNT(id) > 5;