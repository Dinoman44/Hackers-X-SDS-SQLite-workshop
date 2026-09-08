SELECT name, country FROM customer WHERE country NOT IN ('JAP', 'SG', 'IND');

-- longer alternative:
-- SELECT name, country FROM customer WHERE country != 'JAP' AND country != 'SG' AND country != 'IND';