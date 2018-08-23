const client = require('./index.js');
const redis = require('./redisConnection.js');

// const redisClient = redis.createClient();

const getRelatedProductsByID = (id, callback) => {
  const text =    'select * from products where id in (select similarid from similar_products_relation where similar_products_relation.id = $1)';
  client.query(text, [id], (err, res) => {
    if (err) {
      callback(err);
    } else {
      redis.setex(id, 3600, JSON.stringify(res.rows));
      callback(err, res.rows);
    }
  });
};

const getRelatedProductsByName = (name, callback) => {
  const text =    'select * from products where id in (select similarid from similar_products_relation where similar_products_relation.id = (select id from products where name = $1))';
  client.query(text, [name], (err, res) => {
    if (err) {
      callback(err);
    } else {
      redis.setex(name, 3600, JSON.stringify(res.rows));
      callback(err, res.rows);
    }
  });
};

// const getByID = () => {};

// getRelatedProducts(10000000, (err, data) => {
//   if (err) {
//     console.log(err);
//   } else {
//     console.log(`received from postgres ${data}`);
//   }
// });

module.exports = { getRelatedProductsByID, getRelatedProductsByName };
