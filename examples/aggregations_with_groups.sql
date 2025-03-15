SELECT category, AVG(price) FROM product GROUP BY category;

SELECT category, COUNT(id) FROM product GROUP BY category;

SELECT category, MIN(price) FROM product GROUP BY category;

SELECT country, COUNT(id) FROM customer GROUP BY country;