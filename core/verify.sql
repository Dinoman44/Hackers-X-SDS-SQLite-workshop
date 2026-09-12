SELECT IIF(COUNT(*) = 51, "Customer table loaded", "Customer table not loaded") FROM customer;
SELECT IIF(COUNT(*) = 55, "Product table loaded", "Product table not loaded") FROM product;
SELECT IIF(COUNT(*) = 58, "Purchase table loaded", "Purchase table not loaded") FROM purchase;