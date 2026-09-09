SELECT pd.id, pd.name, COUNT(pd.id) AS count
FROM product pd JOIN purchase pc ON pd.id = pc.product_id
GROUP BY pc.product_id ORDER BY pc.total_price DESC LIMIT 1;