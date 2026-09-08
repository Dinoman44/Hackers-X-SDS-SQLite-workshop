SELECT name, age, country FROM customer
WHERE (age > 40 AND country='IND')
OR (age < 30 AND country='SG');