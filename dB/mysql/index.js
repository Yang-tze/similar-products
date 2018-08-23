const mysql = require('mysql');

const con = mysql.createConnection({
  user: 'root',
  password: '',
  database: 'similarProducts',
});

con.connect((err) => {
  if (err) {
    console.log('Error connecting to MySql');
    return;
  }
  console.log('Connected to database');
});

// con.query('select * from products', (err, data) => {
//   console.log(err || data);
// });

module.exports = con;
