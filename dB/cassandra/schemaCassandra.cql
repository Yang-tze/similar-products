DROP KEYSPACE IF EXISTS similarproducts;

CREATE KEYSPACE IF NOT EXISTS similarproducts WITH REPLICATION = {'class':'SimpleStrategy', 'replication_factor' : 3};

USE similarproducts;

CREATE TABLE products (
    id int,
    name text,
    url text,
    rating decimal,
    reviews int,
    price decimal,
    isPrime boolean,
    PRIMARY KEY(id, name)
);



-- COPY products (id,name,url,rating,reviews,price,isPrime)
-- FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/smallrandomData.csv' WITH DELIMITER=',';

COPY products (id,name,url,rating,reviews,price,isPrime)
FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomData1.csv' WITH DELIMITER=',';

COPY products (id,name,url,rating,reviews,price,isPrime)
FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomData2.csv' WITH DELIMITER=',';

COPY products (id,name,url,rating,reviews,price,isPrime)
FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomData3.csv' WITH DELIMITER=',';

COPY products (id,name,url,rating,reviews,price,isPrime)
FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomData4.csv' WITH DELIMITER=',';

COPY products (id,name,url,rating,reviews,price,isPrime)
FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomData5.csv' WITH DELIMITER=',';

COPY products (id,name,url,rating,reviews,price,isPrime)
FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomData6.csv' WITH DELIMITER=',';

COPY products (id,name,url,rating,reviews,price,isPrime)
FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomData7.csv' WITH DELIMITER=',';

COPY products (id,name,url,rating,reviews,price,isPrime)
FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomData8.csv' WITH DELIMITER=',';

COPY products (id,name,url,rating,reviews,price,isPrime)
FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomData9.csv' WITH DELIMITER=',';

COPY products (id,name,url,rating,reviews,price,isPrime)
FROM '/Users/OzgeYurtsever/Dev/SDC/similar-products/data/randomData10.csv' WITH DELIMITER=',';