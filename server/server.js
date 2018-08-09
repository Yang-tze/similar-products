const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');
const mysql = require('mysql');
const model = require('../dB/model.js');

const app = express();
const port = 3005;

const con = mysql.createConnection({
  user: 'root',
  password: '',
  database: 'similarProducts'
});

app.use(bodyParser.json());
app.use(express.static('client'));

// get
app.get('/products', function(req, res) {
  model.getData((err, data) => {
    if (err) {
      res.status(500).send(err);
    } else {
      res.status(200).send(data);
    }
  });
});

app.post('/products', function(req, res) {
  // post
  const { url, name, rating, reviews, price, isPrime } = req.body;
  model.postData(
    ([url, name, rating, reviews, price, isPrime],
    (err, data) => {
      if (err) {
        res.status(500).send(err);
      } else {
        res.sendStatus(200);
      }
    })
  );
});

app.put('/products', function(req, res) {
  const { id, url, name, rating, reviews, price, isPrime } = req.body;
  model.updateByID(
    id,
    url,
    name,
    rating,
    reviews,
    price,
    isPrime,
    (err, result) => {
      if (err) {
        res.sendStatus(500);
      } else {
        res.status(200).send('PUT request to homepage');
      }
    }
  );
});

app.delete('/products', function(req, res) {
  const id = req.body.id;
  model.deleteByID(id, (err, result) => {
    if (err) {
      res.sendStatus(500);
    } else {
      res.status(200).send('DELETE request to homepage');
    }
  });
});

app.listen(port, () => {
  console.log(`server running at: http://localhost:${port}`);
});
