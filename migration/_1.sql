CREATE SCHEMA IF NOT EXISTS shop;

CREATE TABLE IF NOT EXISTS shop.users (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    address VARCHAR(255),
    phone_number VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    birthday DATE
);

INSERT INTO shop.users (user_name, password, address, phone_number, email, birthday)
VALUES ('lekhoi', '$09$ugFZmLNF89rFqaf2VLshyOEUm9rN8WOQsBt3BFs8mYoJMQ8lFuxAu', '350A To Hien Thanh', '0838571677', 'khoi.le99@hcmut.edu.vn','1999-12-28');

ALTER TABLE shop.users
ADD user_type INT DEFAULT 0,
ADD is_blocked BOOLEAN DEFAULT FALSE;
