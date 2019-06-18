var express = require('express');
var articleModel = require('../models/article.model');
var childCatModel = require('../models/childCat.model');

var router = express.Router();

router.get('/', (req, res, next) => {
  var sl3 = 1;
  var sl1 = 4;
  var sl2 = 4;
  Promise.all([
    articleModel.mostView(sl1),
    articleModel.mostView(sl2),
    articleModel.mostNew(),
    childCatModel.top10Cat()
  ]).then(([rows1, rows2, rows3, rows4]) => {
   // var article = rows4;
   // console.log(rows3);
    var ArticleOfCat1 = [];
    var ArticleOfCat2 = [];
    var ArticleOfCat3 = [];
    var ArticleOfCat4 = [];
    for (const a1 of rows1) { // chỉra1 hàng  /// cái này của 4 bài viết đầu
      articleModel.detailArticle(a1.idTin).then(Art1 => {
        var d1 = Art1[0];
        ArticleOfCat1.push(d1);
      });
    }

    for (const a2 of rows2) { 
        articleModel.detailArticle(a2.idTin).then (Art2 =>{
          var d2 = Art2[0];
          ArticleOfCat2.push(d2);
        });
    }

    for (const a3 of rows3) { 
        articleModel.detailArticle(a3.idTin).then (Art3 =>{
          var d3 = Art3[0];
          ArticleOfCat3.push(d3);
        });
    }

    for (const a4 of rows4) {
        articleModel.mostNewByCat(a4.idLT, sl3).then (Art4 =>{
          var obj = { Ten: a4.ten, Article: Art4[0]};
          ArticleOfCat4.push(obj);
        });
    }

    res.render('home', {
      ArticleOfCat1, // 4 bài viết nổi bậc
      ArticleOfCat2, // 10 bài viết view nhiều nhất mọi chuyên mục
      ArticleOfCat3, //10 bài viết mới nhất mọi chuyên mục
      ArticleOfCat4 //top 10 chuyên mục, mỗi chuyên mục 1 bài viết mới nhất
    });
  }).catch(next)
})

module.exports = router;