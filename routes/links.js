var express = require('express');
var router = express.Router();
const pool = require('../models/db')

router.get('/', function (req, res, next) {
  const sql = 'SELECT * FROM links';

  pool.query(sql, function (err, result, fields) {
    if (err) throw err;
    res.json({
      status: 200,
      result: result
    });
  });
});

module.exports = router;
