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


COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation1.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation2.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation3.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation4.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation5.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation6.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation7.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation8.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation9.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation10.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation11.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation12.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation13.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation14.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation15.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation16.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation17.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation18.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation19.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation20.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation21.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation22.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation23.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation24.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation25.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation26.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation27.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation28.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation29.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation30.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation31.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation32.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation33.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation34.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation35.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation36.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation37.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation38.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation39.csv' DELIMITER ',' CSV HEADER;
COPY similar_products_relation (id,similarID) FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomRelation40.csv' DELIMITER ',' CSV HEADER;



-- insert into products (id,name,url,rating,reviews,price,isPrime) values (9999999,'ijjjjjj','https://s3-us-west-1.amazonaws.com/hamazon-product-images/5.jpeg',2.6,139,943.19,false);
-- COPY products (id,name,url,rating,reviews,price,isPrime)
-- FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/reFeed.csv'
-- DELIMITER ',' CSV HEADER;

-- COPY similar_products_relation (id,similarID)
-- FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/reFeed2.csv'
-- DELIMITER ',' CSV HEADER;