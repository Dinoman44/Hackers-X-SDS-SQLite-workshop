SELECT category, ROUND(AVG(price), 2), COUNT(id), MIN(price), MAX(price)
FROM product
WHERE price >= 50
GROUP BY category
HAVING COUNT(id) >= 5
ORDER BY COUNT(id) DESC;