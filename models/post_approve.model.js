var db = require('../utils/db');

module.exports = {
  pending: () => {
    return db.load(`select * from tin where AnHien = '0'`);
  },

  deny: () => {
    return db.load(`select * from tin where AnHien = '2'`);
  },

  allow: () => {
    return db.load(`select * from tin where AnHien = '1'`);
  },

  update_allow: () => {
    var sql = `UPDATE tin SET AnHien = '1' WHERE idTin = '51'`
    return db.load(sql);
  },
};
