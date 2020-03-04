'use strict';

const express = require('express');

// Constants
const PORT = 8001;
//const HOST = 'localhost'; // for local IDE test
const HOST = '0.0.0.0'; // for use in container

// App
const app = express();
app.get('/', (req, res) => {
  res.send('Hello, World!!!');
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);