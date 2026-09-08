SELECT category, COUNT(id) FROM product GROUP BY category;

SELECT category, MIN(price) FROM product GROUP BY category;

SELECT country, MAX(age) FROM customer GROUP BY country;