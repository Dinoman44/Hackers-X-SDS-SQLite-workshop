SELECT category, ROUND(AVG(price), 2), COUNT(id), MAX(price)
FROM product
WHERE price >= 50
GROUP BY category
HAVING COUNT(id) >= 5
ORDER BY COUNT(id) DESC;