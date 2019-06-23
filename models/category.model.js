var db = require('../utils/db');

module.exports = {
  all: () => {
    return db.load('select * from loaitin');
  },

  single: id => {
    return db.load(`select * from loaitin where idLT = '${id}'`)
  },

  loadactive: () => {
    return db.load(`select * from theloai where AnHien = ${1}`);
  },

  editor: () => {
    return db.load('select * from editor');
  },

  add: (category) => {
    var sql = `insert into loaitin (Ten, BienTapVien, ThuTu, NgayTao, idTL)
               values ('${category.CategoryName}', '${category.EditorName}', '20', '23-06-2019', '1')`
    return db.load(sql);
  },

  edit: (category) => {
    var sql = `UPDATE loaitin SET Ten = '${category.CategoryName}', BienTapVien = '${category.EditorName}'  WHERE idLT = '${category.idLT}'`
    return db.load(sql);
  },

  delete: (category) => {
    var sql = `DELETE from loaitin WHERE idLT = '${category.idLT}'`
    return db.load(sql);
  },
};
