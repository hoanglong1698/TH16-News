var express = require('express');
var categoryModel = require('../../models/category.model');

var router = express.Router();

router.get('/', (req, res) => {
  categoryModel.all()
    .then(rows => {
      res.render('admin/vwCategories/index', {
        theloai: rows
      });
    }).catch(err => {
      console.log(err);
      res.end('error occured.')
    });
})

router.get('/add', (req, res) => {
  res.render('admin catogories add');
})

module.exports = router;
