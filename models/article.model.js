var db = require('../utils/db');

module.exports = {
  all: () => {
    return db.load('select * from tin where AnHien = 1');
  },

  allByChildCat: childCatId => {
    return db.load(`select * from tin where idLT = ${childCatId} and AnHien = 1`);
  },

  single: idTin => {
    return db.load(`select * from tin where idTin = ${idTin}`);
  },

  pageByChildCat: (catId, limit, offset) => {
    return db.load(`select * from tin where idLT = ${catId} and AnHien = 1 limit ${limit} offset ${offset}`);
  },

  countChildByCat: catId => {
    return db.load(`select count(*) as total from tin where idLT = ${catId} and AnHien = 1`);
  },

  mostView : sl => { //  sl bài viết được XEM NHIỀU NHẤT mọi chuyên mục
    return db.load(`select * from tin order by SoLanXem desc limit ${sl}`);
  },

  most4View: ()  => { //4 bài viết XEM NHIỀU NHẤT mọi chuyên mục TRONG TUẦN
    return db.load(`select * from tin where SoLanXem not in (SELECT max(SoLanXem) from tin) order by SoLanXem desc limit 4`);
  },

  topView : () => {  // 1 bài viết XEM NHIỀU NHẤT  mọi chuyên mục TRONG TUẦN
    return db.load(`select * from tin where SoLanXem = (select max(SoLanXem) from tin)`);
  },

  most10New: ()  => { //10 bai viết MỚI NHẤT mọi chuyên mục
    return db.load(`select * from tin where AnHien = 1 order by idTin desc limit 10`); /////
  },

  mostNewByCat : (idLT, sl) => { // sl bài viết MỚI NHẤT của chuyên mục idTL
    return db.load(`select * from tin where idLT = ${idLT} and AnHien = 1 order by idTin desc limit ${sl}`);
  },

  detailArticle: idTin =>{
    return db.load(`select a.TieuDe, a.urlHinh, a.Ngay, a.idTin, a.idLT, a.urlHinh, c.Ten
    from tin a, loaitin c where (a.idTin = ${idTin}) and (a.idLT = c.idLT)`);
  },

};
