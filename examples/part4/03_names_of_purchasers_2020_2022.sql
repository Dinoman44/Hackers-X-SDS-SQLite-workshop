SELECT c.name FROM customer c JOIN purchase p ON c.id = p.customer_id
WHERE p.purchase_date BETWEEN '2020-01-01' AND '2022-12-31';