SELECT name, country, join_date FROM customer
WHERE join_date BETWEEN '2024-03-01' AND '2024-03-31'
AND country='SG'
OR join_date BETWEEN '2024-04-01' AND '2024-04-30'
AND country='IND';