var express = require('express');
var categoryModel = require('../../models/category.model');

var router = express.Router();

router.get('/', (req, res) => {
  categoryModel.all()
    .then(rows => {
      res.render('admin/vwCategories/index', {
        loaitin: rows
      });
    }).catch(err => {
      console.log(err);
      res.end('error occured.')
    });
})

router.get('/add', (req, res) => {
  categoryModel.editor()
  .then(rows => {
    res.render('admin/vwCategories/add', {
      editors: rows
    });
  }).catch(err => {
    console.log(err);
    res.end('error occured.')
  });
})

router.post('/add', (req, res) => {
  var category = {
      CategoryName: req.body.CategoryName,
      EditorName: req.body.EditorName,
      DateCreate: "19-06-2019",
      idTL: '1'
  };
  categoryModel.add(category);
  res.redirect('/admin/categories');
})

router.get('/edit/:id', (req, res) => {
  var id = req.params.id;
  tagModel.single(id)
  .then(rows => {
    if (rows.length > 0) {
      res.render('admin/vwTags/edit', {
        tag_edit: rows[0],
      });
    }
  }).catch(err =>{
    console.log(err);
    res.end('error');
  })
})

router.post('/edit', (req, res) => {
  var tag = {
      idTag: req.body.idTag,
      TagName: req.body.TagName,
  };
  tagModel.edit(tag);
  res.redirect('/admin/tag');
})

router.post('/delete', (req, res) => {
  var tag = {
      idTag: req.body.idTag,
      TagName: req.body.TagName,
  };
  tagModel.delete(tag);
  res.redirect('/admin/tag');
})

module.exports = router;
