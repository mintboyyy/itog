CREATE TABLE address (
id SERIAL PRIMARY KEY,
street VARCHAR(100) NOT NULL,
city VARCHAR(50) NOT NULL,
postal_code VARCHAR(5)
);
CREATE TABLE cart (
    id SERIAL PRIMARY KEY,
    quantity INT
);
CREATE TABLE category (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);
CREATE TABLE modeluser (
    ID_User SERIAL PRIMARY KEY,
    username VARCHAR(255),
    password VARCHAR(255),
    active BOOLEAN
);
CREATE TABLE ord (
    id SERIAL PRIMARY KEY,
    ord_date DATE NOT NULL,
    status VARCHAR(255) NOT NULL,
    cart_id BIGINT,
    address_id BIGINT
);
CREATE TABLE payment (
    id SERIAL PRIMARY KEY,
    amount DOUBLE PRECISION NOT NULL,
    payment_date DATE NOT NULL,
    ord_id BIGINT
);
CREATE TABLE product (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(1000) NOT NULL,
    price DOUBLE PRECISION NOT NULL,
    category_id BIGINT,
    ord_id BIGINT
);
CREATE TABLE review (
    id SERIAL PRIMARY KEY,
    text VARCHAR(255) NOT NULL,
    rating INT NOT NULL,
    product_id BIGINT
);
