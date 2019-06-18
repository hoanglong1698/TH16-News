var express = require('express');
var articleModel = require('../models/article.model');
var childCatModel = require('../models/childCat.model');

var router = express.Router();

router.get('/:id/article', (req, res, next) => {
  var id = req.params.id;
  var page = req.query.page || 1;
  if (page < 1) page = 1;

  var limit = 2;
  var offset = (page - 1) * limit;

  Promise.all([
    articleModel.pageByChildCat(id, limit, offset),
    articleModel.countChildByCat(id),
    childCatModel.single(id),
  ]).then(([rows,count_rows, childCat]) => {
    for (const c of res.locals.allCat) {
        if (c.childCat.idLT === +id) {
          c.isActive = true;
        }
    }

    var total = count_rows[0].total;
    var nPages = Math.floor(total / limit);
    if (total % limit > 0) nPages++;
    var pages = [];
    for (i = 1; i <= nPages; i++) {
      var obj = { value: i, active: i === +page };
      pages.push(obj);
    }
    
      res.render('vwArticle/byCat', {
        products: rows,
        pages,
        con : childCat[0]
      });
  }).catch(next);
})

router.get('/:id/single', (req, res, next) => {
  var id = req.params.id;
  var sl = 4;
  Promise.all([
    articleModel.single(id),
    articleModel.mostNewByCat(id, sl),
  ]).then(([rows1, row2]) => {
    d = rows1[0],
    childCatModel.single(d.idLT).then(row3 =>{
      var d1 = row3[0]
      res.render('vwArticle/singleArticle', {
        SingleAr: rows1[0], //1 bài viết
        TopNewArticle : row2, // 5 bài viết cùng chuyê mục
        d1
      })
    })
  }).catch(next);
})

// router.get('/:id/article', (req, res) => {
//     var id = req.params.id;
//     res.render('vwArticle/byCat');
// })

module.exports = router;