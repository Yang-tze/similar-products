DROP DATABASE IF EXISTS similarProducts;

CREATE DATABASE similarProducts;

USE similarProducts;

CREATE TABLE products
(
  id int NOT NULL
  AUTO_INCREMENT PRIMARY KEY,
url text,
name text NOT NULL,
rating int,
reviews int,
price real NOT NULL,
isPrime boolean NOT NULL
);

  INSERT INTO products
    (url, name, rating, reviews, price, isPrime)
  VALUES
    ('Pioneer+DJ+Thumbnail.jpg', 'Pioneer DJ DDJ-SB3 DJ Controller', 4.3, 37, 243.45, false);
  INSERT INTO products
    (url, name, rating, reviews, price, isPrime)
  VALUES
    ('Nintendo+Switch+Gray.jpg', 'Nintendo Switch - Gray Joy-Con', 4.5, 4209, 299.00, true);
  INSERT INTO products
    (url, name, rating, reviews, price, isPrime)
  VALUES
    ('Legend+of+Zelda.jpg', 'The Legend of Zelda: Breath of the Wild - Nintendo Switch', 4.8, 2533, 54.98, true);
  INSERT INTO products
    (url, name, rating, reviews, price, isPrime)
  VALUES
    ('Screen+Protector.jpg', 'amFilm Tempered Glass Screen Protector for Nintendo Switch 2017 (2-Pack)', 4.4, 10560, 1.51, true);
  INSERT INTO products
    (url, name, rating, reviews, price, isPrime)
  VALUES
    ('Fire+TV.jpg', 'Fire TV with 4K Ultra HD (2017 Edition, Pendant) + HD Antenna', 4, 17888, 74.99, true);
  INSERT INTO products
    (url, name, rating, reviews, price, isPrime)
  VALUES
    ('Carrying+Case.jpg', 'AmazonBasics Carrying Case for Nintendo Switch - Black', 3.9, 350, 13.99, true);
  INSERT INTO products
    (url, name, rating, reviews, price, isPrime)
  VALUES
    ('My+Little+Pony.jpg', 'My Little Pony Apple Jack Costume Zip-Up Hoodie', 4.5, 24, 18.99, true);
  INSERT INTO products
    (url, name, rating, reviews, price, isPrime)
  VALUES
    ('Food+Storage.jpg', 'Sistema KLIP IT Collection Food Storage Containers, Assorted Shapes and Colors, 20-Piece Set', 3.8, 357, 29.99, true);
  INSERT INTO products
    (url, name, rating, reviews, price, isPrime)
  VALUES
    ('Dyson.jpg', 'Dyson Articulating Hard Floor Tool', 4.1, 1593, 39.63, true);
  INSERT INTO products
    (url, name, rating, reviews, price, isPrime)
  VALUES
    ('SMART+BUY.jpg', 'SMART BUY 400 G3 PD DM I5-6500T', null, null, 649.99, true);
  INSERT INTO products
    (url, name, rating, reviews, price, isPrime)
  VALUES
    ('ACER.jpg', 'Acer G226HQL 21.5-Inch Screen LED Monitor', 4, 6062, 71.70, true);
  INSERT INTO products
    (url, name, rating, reviews, price, isPrime)
  VALUES
    ('Echo+Spot.jpg', 'Echo Spot - Black', 4.6, 4355, 129.99, true);
  INSERT INTO products
    (url, name, rating, reviews, price, isPrime)
  VALUES
    ('BOSE.jpg', 'Bose QuietComfort 35 (Series II) Wireless Headphones, Nosie Cancelling - Black', 4.4, 1118, 349.00, true);
  INSERT INTO products
    (url, name, rating, reviews, price, isPrime)
  VALUES
    ('Polk+Audio.jpg', 'Polk Audio CS10 Center Channel Speaker (Single, Black)', 4.3, 900, 99.00, false);
  INSERT INTO products
    (url, name, rating, reviews, price, isPrime)
  VALUES
    ('Harry+Potter.jpg', 'Harry Potter: Complete 8-Film Collection', 4.5, 2753, 50.87, true);
  INSERT INTO products
    (url, name, rating, reviews, price, isPrime)
  VALUES
    ('Yamaha+Bass.jpg', 'Yamaha BB Series 4-String Bass - Tabacco Sunburst', 5, 10, 766.71, false);
  INSERT INTO products
    (url, name, rating, reviews, price, isPrime)
  VALUES
    ('Electric+Guitar.jpg', 'ESP LTD EC-356 Electric Guitar, BlackEl', 4, 16, 399.00, true);
  INSERT INTO products
    (url, name, rating, reviews, price, isPrime)
  VALUES
    ('Basketball.jpg', 'Wilson Evolution Indoor Game Basketball', 4.7, 1483, 42.63, false);
  INSERT INTO products
    (url, name, rating, reviews, price, isPrime)
  VALUES
    ('Air+Force+1.jpg', 'Nike Men Air Force 1 2007', 1, 1, 120.51, false);
  INSERT INTO products
    (url, name, rating, reviews, price, isPrime)
  VALUES
    ('Football.jpg', 'Wilson NFL Junior Touchdown Football', 5, 36, 9.99, true);
  INSERT INTO products
    (url, name, rating, reviews, price, isPrime)
  VALUES
    ('Imploding+Kittens.jpg', 'Imploding Kittens: This is the First Expansion of Exploding Kittens', 4.6, 942, 14.99, true);



