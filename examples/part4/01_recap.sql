-- Get the number of purchases that were made between 2020 and 2022
SELECT COUNT(*) AS num_purchases_2020_2022 FROM purchase
WHERE purchase_date BETWEEN '2020-01-01' AND '2022-12-31';

-- Get the 3 most expensive purchases made after 2021
SELECT * FROM purchase WHERE purchase_date > '2021-01-01'
ORDER BY total_price DESC LIMIT 3;

-- Get the average price of the items in each purchase (price / quantity per row)
SELECT purchase_id, total_price / quantity AS avg_price_per_item FROM purchase;
