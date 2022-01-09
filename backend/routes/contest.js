const router = require('express').Router();

router.get('/test', (req, res) => {
  console.log('got contest test');
  res.send();
})


module.exports = router;
