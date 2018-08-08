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
  // con.connect(err => {
  //   if (err) {
  //     console.log('Error connecting to MySql');
  //     return;
  //   }
  //   console.log('Connected to database');
  // });
  // const getQuery = 'SELECT * FROM products';
  // con.query(getQuery, function(err, result) {
  //   if (err) {
  //     console.log(err);
  //   } else {
  //     console.log('Query successful', result);
  //     res.send(result);
  //   }
  // });
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

  //
  let input = [
    '2nd - Nintendo+Switch+Gray.jpg',
    '2nd - Nintendo Switch - Gray Joy-Con',
    4.5,
    4209,
    299.0,
    true
  ];

  const postQuery =
    'INSERT INTO products (url, name, rating, reviews, price, isPrime) VALUES (?, ?, ?, ?, ?, ?)';
  con.query(postQuery, function(err, result) {});
});

app.listen(port, () => {
  console.log(`server running at: http://localhost:${port}`);
});
