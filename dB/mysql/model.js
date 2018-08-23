const con = require('./index.js');
// get
const getData = (cb) => {
  const getQuery = 'SELECT * FROM products';
  con.query(getQuery, (err, data) => {
    if (err) {
      console.log(err);
    } else {
      //   console.log('Ozges model here', data);
      cb(null, data);
    }
  });
};
// post
const postData = (dataArr, cb) => {
  const postQuery =    'INSERT INTO products (url, name, rating, reviews, price, isPrime) VALUES (?, ?, ?, ?, ?, ?)';
  con.query(postQuery, dataArr, cb);
};

// put
const updateByID = (id, url, name, rating, reviews, price, isPrime, cb) => {
  const updateQuery =    'UPDATE products SET url = ?, name = ?, rating = ?, reviews = ?, price = ?, isPrime = ? WHERE id = ?';
  con.query(updateQuery, [url, name, rating, reviews, price, isPrime, id], cb);
};

// delete
const deleteByID = (id, cb) => {
  const deleteQuery = 'DELETE FROM products WHERE id = ?';
  con.query(deleteQuery, [id], cb);
};

module.exports = {
  getData,
  postData,
  updateByID,
  deleteByID,
};

// const deleteByName = (name, cb) => {
//   const deleteQuery = 'DELETE FROM products WHERE name = ?';
//   con.query(deleteQuery, [name], cb);
// };

// TESTS
// ------ Test delete ------
// deleteByID(1, (err, data) => {
//   if (err) return console.log(err);
//   getData((err, data) => console.log(err || data));
// });

// ------ Test get -----
// getData((err, data) => console.log(err || data));

// ------ Test post/insert -----
/*
const input = [
  '2nd - Nintendo+Switch+Gray.jpg',
  '2nd - Nintendo Switch - Gray Joy-Con',
  4.5,
  4209,
  299.0,
  true,
];

postData(input, (err, data) => {
  if (err) return console.log(err);
  getData((err, data) => console.log(err || data));
});
*/

// ------ Test update -----
// updateByID(
//   1,
//   '2nd - Nintendo+Switch+Gray.jpg',
//   '2nd - Nintendo Switch - Gray Joy-Con',
//   4.5,
//   4209,
//   299.0,
//   true,
//   (err, data) => {
//     if (err) return console.log(err);
//     getData((err, data) => console.log(err || data));
//   },
// );
