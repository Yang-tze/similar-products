const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');
const mysql = require('mysql');

const app = express();
const port = 3001;

const con = mysql.createConnection({
  user: 'root',
  password: 'password',
  database: 'similarProducts',
});

app.use(bodyParser.json());
app.use(express.static('client'));

app.get('/products', function (req, res) {
  con.connect((err) => {
    if (err) {
      console.log('Error connecting to MySql');
      return;
    }
    console.log('Connected to database');
  })

  var query = 'SELECT * FROM products';

  con.query(query, function (err, result) {
    if (err) {
      console.log(err);
    } else {
      console.log('Query successful');
      res.send(result);
    }
  })
})

app.listen(port, () => {
  console.log(`server running at: http://localhost:${port}`);
});