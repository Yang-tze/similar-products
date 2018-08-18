const { Pool, Client } = require('pg');
const passwords = require('../../passwords.js');

const connection = {
  user: 'postgres',
  host: 'localhost',
  database: 'similarproducts',
  password: passwords.pw.postgresPassword,
  port: 5432,
};

const client = new Client(connection);
// Pool.connect();
client.connect();

module.exports = client;
