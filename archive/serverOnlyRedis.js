require('newrelic');
const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');
const redis = require('../dB/postgres/redisConnection.js');
// mysql
// const model = require('../dB/mysql/model.js');
// postgres
const model = require('../dB/postgres/model.js');
// cassandra

const app = express();
const port = 3005;
app.set('port', port);

app.get('/', (req, res) => {
  res.redirect('/1');
});

app.use(bodyParser.json());
app.use(express.static(path.join(__dirname, '../client')));

// app.get('/:id', function(req, res) {
//   const htmlPath = path.join(__dirname, '../client/index.html');
//   console.log('path', htmlPath);
//   res.sendFile(htmlPath);
// });

const getCache = (req, res) => {
  redis.get(req.params.id, (err, result) => {
    if (result) {
      // console.log('inside redis', result);
      res.send(result);
    } else {
      model.getRelatedProductsByID(req.params.id, (error, data) => {
        if (error) {
          res.status(500).send(error);
        } else {
          console.log(process.pid);
          res.status(200).send(data);
        }
      });
    }
  });
};

// get
app.get('/:id', getCache);

app.listen(port, () => {
  console.log(`server running at: http://localhost:${port}`);
});

// get;

// app.get('/:id', function(req, res) {
//   model.getRelatedProducts(req.params.id, (err, data) => {
//     if (err) {
//       console.log('getting error', req.params.id);
//       res.status(500).send(err);
//     } else {
//       console.log('here', req.params.id);
//       res.status(200).send(data);
//     }
//   });
// });

// get
// app.get('/products', function(req, res) {
//   model.getData((err, data) => {
//     if (err) {
//       res.status(500).send(err);
//     } else {
//       res.status(200).send(data);
//     }
//   });
// });

// app.post('/products', function(req, res) {
//   // post
//   const { url, name, rating, reviews, price, isPrime } = req.body;
//   model.postData(
//     ([url, name, rating, reviews, price, isPrime],
//     (err, data) => {
//       if (err) {
//         res.status(500).send(err);
//       } else {
//         res.sendStatus(200);
//       }
//     })
//   );
// });

// app.put('/products', function(req, res) {
//   const { id, url, name, rating, reviews, price, isPrime } = req.body;
//   model.updateByID(
//     id,
//     url,
//     name,
//     rating,
//     reviews,
//     price,
//     isPrime,
//     (err, result) => {
//       if (err) {
//         res.sendStatus(500);
//       } else {
//         res.status(200).send('PUT request to homepage');
//       }
//     }
//   );
// });

// app.delete('/products', function(req, res) {
//   const id = req.body.id;
//   model.deleteByID(id, (err, result) => {
//     if (err) {
//       res.sendStatus(500);
//     } else {
//       res.status(200).send('DELETE request to homepage');
//     }
//   });
// });
