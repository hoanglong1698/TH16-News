var db = require('../utils/db');

module.exports = {
  all: () => {
    return db.load('select * from tags');
  },

  single: id => {
    return db.load(`select * from tags where idTag = '${id}'`)
  },

  add: (tag) => {
    var sql = `insert into tags (TenTag, NgayTao)
               values ('${tag.TagName}', '${tag.NgayTao}')`
    return db.load(sql);
  },

  edit: (tag) => {
    var sql = `UPDATE tags SET TenTag = '${tag.TagName}' WHERE idTag = '${tag.idTag}'`
    return db.load(sql);
  },

  delete: (tag) => {
    var sql = `DELETE from tags WHERE idTag = '${tag.idTag}'`
    return db.load(sql);
  },
};