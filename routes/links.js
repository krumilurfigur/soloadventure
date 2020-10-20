var express = require('express');
var router = express.Router();
const {pool, query} = require('../models/db')

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

router.get('/:id', async function (req, res, next) {
const sql = 'SELECT * FROM story WHERE id = ?';

try {
  const story = await query(
    'SELECT * FROM story WHERE id = ?',
    req.params.id
  );

  const links = await query(
    'SELECT * FROM links WHERE story_id = ?',
    req.params.id
  );

  res.render('index', {
    status: 200,
    story: story,
    links: links
  });

  } catch (e) {
    console.error(e);
    next(e);
  }
});

module.exports = router;
