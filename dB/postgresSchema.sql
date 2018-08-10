DROP DATABASE IF EXISTS similarproducts;

CREATE DATABASE similarproducts;

\connect similarproducts;

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



COPY products (id,name,url,rating,reviews,price,isPrime)
FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomData1.csv'
DELIMITER ',' CSV HEADER;

COPY products (id,name,url,rating,reviews,price,isPrime)
FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomData2.csv'
DELIMITER ',' CSV HEADER;

COPY products (id,name,url,rating,reviews,price,isPrime)
FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomData3.csv'
DELIMITER ',' CSV HEADER;

COPY products (id,name,url,rating,reviews,price,isPrime)
FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomData4.csv'
DELIMITER ',' CSV HEADER;

COPY products (id,name,url,rating,reviews,price,isPrime)
FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomData5.csv'
DELIMITER ',' CSV HEADER;

COPY products (id,name,url,rating,reviews,price,isPrime)
FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomData6.csv'
DELIMITER ',' CSV HEADER;

COPY products (id,name,url,rating,reviews,price,isPrime)
FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomData7.csv'
DELIMITER ',' CSV HEADER;

COPY products (id,name,url,rating,reviews,price,isPrime)
FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomData8.csv'
DELIMITER ',' CSV HEADER;

COPY products (id,name,url,rating,reviews,price,isPrime)
FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomData9.csv'
DELIMITER ',' CSV HEADER;

COPY products (id,name,url,rating,reviews,price,isPrime)
FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomData10.csv'
DELIMITER ',' CSV HEADER;
