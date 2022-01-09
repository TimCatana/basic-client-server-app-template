const express = require('express');
const app = express();

app.use(express.json());

/**
 * Route setup.
 * Order of precedence matters
 */
app.use('/contest', require('./routes/contest'));

app.use('/', (req, res) => {
  console.log('root')
  res.send();
});

module.exports = app;
