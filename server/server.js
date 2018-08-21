require('newrelic');
const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');
const cluster = require('cluster');
const numCPUs = require('os').cpus().length;
const redis = require('../dB/postgres/redisConnection.js');

// mysql
// const model = require('../dB/mysql/model.js');
// postgres
const model = require('../dB/postgres/model.js');

const app = express();
const port = 3005;

if (cluster.isMaster) {
  for (let i = 0; i < numCPUs; i += 1) {
    cluster.fork();
  }

  cluster.on('exit', (worker, code, signal) => {
    console.log(`worker ${worker.process.pid} died`);
  });
} else {
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
            // console.log(process.pid);
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
}
