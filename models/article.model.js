var db = require('../utils/db');

module.exports = {
  all: () => {
    return db.load('select * from tin');
  },

  allByChildCat: childCatId => {
    return db.load(`select * from tin where idLT = ${childCatId}`);
  },

  single: idTin => {
    return db.load(`select * from tin where idTin = ${idTin}`);
  },

  pageByChildCat: (catId, limit, offset) => {
    return db.load(`select * from tin where idLT = ${catId} limit ${limit} offset ${offset}`);
  },

  countChildByCat: catId => {
    return db.load(`select count(*) as total from tin where idLT = ${catId}`);
  },

  mostView: view  => { //index bài viết view nhiều nhất mọi chuyên mục
    return db.load(`select * from tin order by SoLanXem desc limit ${view}`);
  },

  mostNew: ()  => { //10 bai viết mới nhất mọi chuyên mục
    return db.load(`select * from tin order by idTin desc limit ${4}`);
  },

  mostNewByCat : (idLT, slArt) => { //bài viết mới nhất của chuyên mục idTL
    return db.load(`select * from tin where idLT = ${idLT} order by idTin desc limit ${slArt}`);
  },

  detailArticle: idTin =>{
    return db.load(`select a.TieuDe, a.urlHinh, a.Ngay, a.idTin, c.Ten
    from tin a, loaitin c where (a.idTin = ${idTin}) and (a.idLT = c.idLT)`);
  },

};
