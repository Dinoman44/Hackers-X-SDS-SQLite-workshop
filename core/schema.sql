CREATE TABLE IF NOT EXISTS customer (
    id INTEGER PRIMARY KEY AUTOINCREMENT, -- unique id for each customer, +1 per row
    name TEXT NOT NULL, -- name of the customer, cannot be empty
    age INTEGER NOT NULL, -- age of the customer, cannot be empty
    email TEXT UNIQUE NOT NULL, -- each customer must have unique non-empty email
    country TEXT NOT NULL, -- country of the customer, cannot be empty
    join_date DATE NOT NULL -- date the customer joined, cannot be empty,...
            DEFAULT CURRENT_DATE -- defaults to current date if not provided, and...
            CHECK(join_date <= CURRENT_DATE) -- cannot be in the future
);

CREATE TABLE IF NOT EXISTS product (
    id INTEGER PRIMARY KEY AUTOINCREMENT, -- unique id for each product, +1 per row
    name TEXT NOT NULL, -- name of the product, cannot be empty
    category TEXT NOT NULL, -- category of the product, cannot be empty
    price REAL NOT NULL CHECK(price >= 0), -- price of the product, must be non-negative
    stock INTEGER NOT NULL CHECK(stock >= 0), -- stock of the product, must be non-negative
    num_sold INTEGER NOT NULL CHECK(num_sold >= 0), -- number of products sold, must be non-negative
    website_only BOOLEAN NOT NULL -- indicates if the product is only available on the website
);

CREATE TABLE IF NOT EXISTS purchase (
    id INTEGER PRIMARY KEY AUTOINCREMENT, -- unique id for each purchase, +1 per row
    customer_id INTEGER NOT NULL, -- foreign key referencing the customer who made the purchase
    product_id INTEGER NOT NULL, -- foreign key referencing the product that was purchased
    quantity INTEGER NOT NULL CHECK(quantity > 0), -- quantity of the product purchased, must be positive
    total_price REAL NOT NULL CHECK(total_price >= 0), -- total price of the purchase, must be non-negative
    purchase_date DATE NOT NULL -- date of the purchase, cannot be empty,...
            DEFAULT CURRENT_DATE -- defaults to current date if not provided, and...
            CHECK(purchase_date <= CURRENT_DATE), -- cannot be in the future
    FOREIGN KEY (customer_id) REFERENCES customer(id), -- foreign key constraint referencing the customer table
    FOREIGN KEY (product_id) REFERENCES product(id) -- foreign key constraint referencing the product table
);