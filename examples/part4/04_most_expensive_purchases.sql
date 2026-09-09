SELECT pd.name FROM product pd JOIN purchase pc ON pd.id = pc.product_id
WHERE pc.purchase_date > '2020-01-01' ORDER BY pc.total_price DESC LIMIT 3;