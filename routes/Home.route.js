var express = require('express');
var articleModel = require('../models/article.model');
var childCatModel = require('../models/childCat.model');

var router = express.Router();

router.get('/', (req, res, next) => {
  var sl2 = 10;
  Promise.all([
    articleModel.topView(), //bài viết xem nhiều nhất trong tuần
    articleModel.most4View(),// 4 bài viết xem nhiều nhất tiếp theo trong tuần
    articleModel.mostView(sl2), //10 bài viết xem nhiều nhất mọi chuyên mục
    articleModel.most10New(), //top 10 bài viết mới nhất mọi chuyên mục
    childCatModel.top10Cat() //top 10 chuyên mục (sắp xếp theo thuộc tính thứ tự)
  ]).then(([rows0, rows1, rows2, rows3, rows4]) => {
    var ArticleOfCat0 = [];
    var ArticleOfCat1 = [];
    var ArticleOfCat2 = [];
    var ArticleOfCat3 = [];
    var ArticleOfCat4 = [];

    var a0 = rows0[0];
    articleModel.detailArticle(a0.idTin).then(Art0 => {
      var d0 = Art0[0];
      ArticleOfCat0.push(d0);
    });

    for (const a1 of rows1) {
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
        articleModel.mostNewByCat(a4.idLT, 1).then (Art4 =>{ //lấy ra 1 bài viết mới nhất của thể loại idTL
          var Article = Art4[0];
          var obj = {Ten: a4.Ten, bv: Article};
          ArticleOfCat4.push(obj);
        });
    }
    res.render('home', {
      layout : 'main2',
      ArticleOfCat0, //1 bài viết 
      ArticleOfCat1, // 4 bài viết
      ArticleOfCat2, // 10 bài viết view nhiều nhất mọi chuyên mục
      ArticleOfCat3, //10 bài viết mới nhất mọi chuyên mục
      ArticleOfCat4 //top 10 chuyên mục, mỗi chuyên mục 1 bài viết mới nhất
    });
  }).catch(next)
})


module.exports = router;