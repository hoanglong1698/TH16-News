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
  categoryModel.single(id)
  .then(rows => {
    if (rows.length > 0) {
      res.render('admin/vwCategories/edit', {
        category_edit: rows[0],
      });
    }
  }).catch(err =>{
    console.log(err);
    res.end('error');
  })
})

router.post('/edit', (req, res) => {
  var category = {
      idLT: req.body.idCategory,
      CategoryName: req.body.CategoryName,
      EditorName: req.body.EditorName
  };
  categoryModel.edit(category);
  res.redirect('/admin/categories');
})

router.post('/delete', (req, res) => {
  var category = {
    idLT: req.body.idCategory,
    CategoryName: req.body.CategoryName,
    EditorName: req.body.EditorName
};
categoryModel.delete(category);
  res.redirect('/admin/categories');
})

module.exports = router;
