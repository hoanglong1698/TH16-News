var db = require('../utils/db');

module.exports = {
  all: () => {
    return db.load('select * from loaitin');
  },

  editor: () => {
    return db.load('select * from editors');
  },

  add: (category) => {
    var sql = `insert into loaitin (Ten, BienTapVien, ThuTu, NgayTao, idTL)
               values ('${category.CategoryName}', '${category.EditorName}', '20', '19-06-2019', '1')`
    return db.load(sql);
  },
};
