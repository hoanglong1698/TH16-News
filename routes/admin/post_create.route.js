var express = require('express');
var post_createModel = require('../../models/post_create.model');

var router = express.Router();

router.get('/', (req, res) => {
  res.render('admin/vwPosts/create', {
    layout : 'main'
  });
})

router.get('/create', (req, res) => {
  post_createModel.add();
  res.redirect('/admin/post_create');
})
module.exports = router;