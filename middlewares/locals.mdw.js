var categoryModel = require('../models/category.model');
var childCatModel = require('../models/childCat.model');

module.exports = (req, res, next) => {
    categoryModel.loadactive()
    .then(rows => {
      var Arr = [];
      for (const c of rows) {
        childCatModel.allByCat(c.idTL).then(rows1 => {
        var d = rows1;
        var obj = { name: c.TenTL, childCat: d};
        Arr.push(obj)
        })
      }
      res.locals.allCat = Arr;
      next();
    })

    
}