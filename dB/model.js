const con = require('./index.js');

const getQuery = 'SELECT * FROM products';
const getData = (cb) => {
  con.query(getQuery, (err, data) => {
    if (err) {
      console.log(err);
    } else {
      //   console.log('Ozges model here', data);
      cb(null, data);
    }
  });
};

const postQuery =  'INSERT INTO products (url, name, rating, reviews, price, isPrime) VALUES (?, ?, ?, ?, ?, ?)';
con.query(postQuery, (err, result) => {});

// getData((err, data) => console.log(err || data));
/*

let input = [
    '2nd - Nintendo+Switch+Gray.jpg',
    '2nd - Nintendo Switch - Gray Joy-Con',
    4.5,
    4209,
    299.0,
    true
  ];

*/

module.exports = { getData };
