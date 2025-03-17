CREATE TABLE IF NOT EXISTS customer (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    age INTEGER NOT NULL,
    email TEXT UNIQUE NOT NULL,
    country TEXT NOT NULL,
    join_date DATE NOT NULL DEFAULT CURRENT_DATE
            CHECK(join_date <= CURRENT_DATE)
);

CREATE TABLE IF NOT EXISTS product (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    category TEXT NOT NULL,
    price REAL NOT NULL CHECK(price >= 0),
    stock INTEGER NOT NULL CHECK(stock >= 0),
    num_sold INTEGER NOT NULL CHECK(num_sold >= 0),
    website_only BOOLEAN NOT NULL
);

CREATE TABLE IF NOT EXISTS purchase (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL CHECK(quantity >= 0),
    total_price INTEGER NOT NULL CHECK(total_price >= 0),
    purchase_date DATE NOT NULL DEFAULT CURRENT_DATE
            CHECK(purchase_date <= CURRENT_DATE),
    FOREIGN KEY (customer_id) REFERENCES customer(id),
    FOREIGN KEY (product_id) REFERENCES product(id)
);
