var db = require('../utils/db');

module.exports = {
  all: () => {
    return db.load('select * from loaitin');
  },

  loadactive: () => {
    return db.load(`select * from theloai where AnHien = ${1}`);
  },

  editor: () => {
    return db.load('select * from editors');
  },

  add: (category) => {
    var sql = `insert into loaitin (Ten, BienTapVien, ThuTu, NgayTao, idTL)
               values ('${category.CategoryName}', '${category.EditorName}', '20', '19-06-2019', '1')`
    return db.load(sql);
  },

  edit: (category) => {
    var sql = `UPDATE loaitin SET Ten = '${category.TagName}',  WHERE idTag = '${tag.idTag}'`
    return db.load(sql);
  },

  delete: (tag) => {
    var sql = `DELETE from tags WHERE idTag = '${tag.idTag}'`
    return db.load(sql);
  },
};
