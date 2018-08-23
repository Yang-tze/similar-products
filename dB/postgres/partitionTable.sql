-- DROP DATABASE IF EXISTS similarproducts;

-- CREATE DATABASE similarproducts_test;

-- \connect similarproducts;

-- \connect similarproducts_test;

-- CREATE TABLE products
-- (
--     id int NOT NULL PRIMARY KEY,
--     name text NOT NULL,
--     url text,
--     rating decimal,
--     reviews int,
--     price decimal NOT NULL,
--     isPrime boolean NOT NULL
-- );


CREATE TABLE similar_products_relation (
    id int,
    similarID int
);

CREATE INDEX relation_on_id ON similar_products_relation (id, similarID);



-- CREATE TABLE products_1M (CHECK ( id >= 1 AND id <= 1000000 )) INHERITS (similar_products_relation);
-- CREATE TABLE products_2M (CHECK ( id >= 1000001 AND id <= 2000000 )) INHERITS (similar_products_relation);
-- CREATE TABLE products_3M (CHECK ( id >= 2000001 AND id <= 3000000 )) INHERITS (similar_products_relation);
-- CREATE TABLE products_4M (CHECK ( id >= 3000001 AND id <= 4000000 )) INHERITS (similar_products_relation);
-- CREATE TABLE products_5M (CHECK ( id >= 4000001 AND id <= 5000000 )) INHERITS (similar_products_relation);
-- CREATE TABLE products_6M (CHECK ( id >= 5000001 AND id <= 6000000 )) INHERITS (similar_products_relation);
-- CREATE TABLE products_7M (CHECK ( id >= 6000001 AND id <= 7000000 )) INHERITS (similar_products_relation);
-- CREATE TABLE products_8M (CHECK ( id >= 7000001 AND id <= 8000000 )) INHERITS (similar_products_relation);
-- CREATE TABLE products_9M (CHECK ( id >= 8000001 AND id <= 9000000 )) INHERITS (similar_products_relation);
-- CREATE TABLE products_10M (CHECK ( id >= 9000001 AND id <= 10000000 )) INHERITS (similar_products_relation);

-- CREATE INDEX relation_id_1M ON products_1M (id, similarID);
-- CREATE INDEX relation_id_2M ON products_2M (id, similarID);
-- CREATE INDEX relation_id_3M ON products_3M (id, similarID);
-- CREATE INDEX relation_id_4M ON products_4M (id, similarID);
-- CREATE INDEX relation_id_5M ON products_5M (id, similarID);
-- CREATE INDEX relation_id_6M ON products_6M (id, similarID);
-- CREATE INDEX relation_id_7M ON products_7M (id, similarID);
-- CREATE INDEX relation_id_8M ON products_8M (id, similarID);
-- CREATE INDEX relation_id_9M ON products_9M (id, similarID);
-- CREATE INDEX relation_id_10M ON products_10M (id, similarID);



