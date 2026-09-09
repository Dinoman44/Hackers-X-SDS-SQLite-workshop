SELECT * FROM customer JOIN purchase ON customer.id = purchase.customer_id;

-- Alias the table names:
-- SELECT * FROM customer c JOIN purchase p ON c.id = p.customer_id;