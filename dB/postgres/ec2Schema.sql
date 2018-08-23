DROP DATABASE IF EXISTS similarproducts;

CREATE DATABASE similarproducts;

\connect similarproducts;

-- \connect similarproducts_test;

CREATE TABLE products
(
    id int NOT NULL PRIMARY KEY,
    name text NOT NULL,
    url text,
    rating decimal,
    reviews int,
    price decimal NOT NULL,
    isPrime boolean NOT NULL
);

CREATE TABLE similar_products_relation (
    id int,
    similarID int
);

CREATE INDEX relation_on_id ON similar_products_relation (id, similarID);
