SELECT category,
    AVG(price) AS avg_price,
    COUNT(id) AS count,
    MAX(price) AS max_price
FROM product
WHERE price >= 50
GROUP BY category
HAVING COUNT(id) >= 5
ORDER BY COUNT(id) DESC;
