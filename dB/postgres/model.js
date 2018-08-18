const client = require('./index.js');

const getRelatedProducts = (id, callback) => {
  const text =    'select * from products where id in (select similarid from similar_products_relation where similar_products_relation.id = $1)';
  client.query(text, [id], (err, res) => {
    if (err) {
      callback(err);
    } else {
      callback(null, res.rows);
    }
    // client.end();
  });
};

// getRelatedProducts(10000000, (err, data) => {
//   if (err) {
//     console.log(err);
//   } else {
//     console.log(`received from postgres ${data}`);
//   }
// });

module.exports = { getRelatedProducts };
