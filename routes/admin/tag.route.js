var express = require('express');
var tagModel = require('../../models/tag.model');

var router = express.Router();

router.get('/', (req, res) => {
  tagModel.all()
    .then(rows => {
      res.render('admin/vwTags/index', {
        tags: rows
      });
    }).catch(err => {
      console.log(err);
      res.end('error occured.')
    });
})

router.get('/add', (req, res) => {
  res.render('admin/vwTags/add');
})

router.post('/add', (req, res) => {
  var tag = {
      TagName: req.body.TagName,
      NgayTao: "19-06-2019",
  };
  tagModel.add(tag);
  res.redirect('/admin/tag');
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

module.exports = router;
