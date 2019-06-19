var db = require('../utils/db');

module.exports = {
  add: () => {
    var sql = `INSERT INTO tin (idTin, TieuDe, TieuDe_KhongDau, TomTat, urlHinh, Ngay, idUser, Content, idLT, idTL, SoLanXem, TinNoiBat, AnHien) VALUES
    ('2000', 'ABC', 'ABC', 'ABC\r\n', '/img/example-image.jpg', NULL, 22, '<h4>ABC</h4><p>ABC</p><p><img style="width: 50px;" src="../img/avatar/avatar-5.png" ', 1, 1, 1614, 0, 0)`
    
    return db.load(sql);
  },
};