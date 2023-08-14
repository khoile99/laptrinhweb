CREATE SCHEMA IF NOT EXISTS shop;

CREATE TABLE IF NOT EXISTS shop.users (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    address VARCHAR(255),
    phone_number VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    birthday DATE,
    user_type INT DEFAULT 0,
    is_blocked BOOLEAN DEFAULT FALSE
);

CREATE TABLE IF NOT EXISTS shop.products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    price INTEGER,
    description TEXT,
    img TEXT
);

INSERT INTO shop.users (user_name, password, address, phone_number, email, birthday)
VALUES ('lekhoi', '$09$ugFZmLNF89rFqaf2VLshyOEUm9rN8WOQsBt3BFs8mYoJMQ8lFuxAu', '350A To Hien Thanh', '0838571677', 'khoi.le99@hcmut.edu.vn','1999-12-28');

CREATE TABLE IF NOT EXISTS shop.admins (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    email VARCHAR(255) UNIQUE
);

INSERT INTO shop.admins (user_name, password, email)
VALUES ('lekhoi', '$2y$09$9lY7KhuKzXgNSRsgYszBdecJbAMLEDCS7kzWApWaf6ldwdeq1pZ/O', 'khoi.le99@hcmut.edu.vn');

CREATE TABLE IF NOT EXISTS shop.comments (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id) ON DELETE CASCADE,
    product_id INT REFERENCES products(id) ON DELETE CASCADE,
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS shop.qa (
    id SERIAL PRIMARY KEY,
    question TEXT,
    answer TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS shop.information (
    key TEXT,
    value TEXT
);

CREATE TABLE IF NOT EXISTS shop.orders (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id) ON DELETE CASCADE,
    product_id INT REFERENCES products(id) ON DELETE CASCADE,
    number INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
