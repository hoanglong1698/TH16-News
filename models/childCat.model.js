var db = require('../utils/db');

module.exports = {
  all: () => {
    return db.load('select * from loaitin');
  },

  allByCat: catId => {
    return db.load(`select * from loaitin where idTL = ${catId}`);
  },

  single: catchildId => {
    return db.load(`select * from loaitin where idLT = ${catchildId}`);
  },

  top10Cat: () =>{
    return db.load(`select * from loaitin order by ThuTu asc limit ${10}`)
  },

};
