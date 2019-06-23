var db = require('../utils/db');

module.exports = {
  add: () => {
    var sql = `INSERT INTO tin (idTin, TieuDe, TomTat, urlHinh, Ngay, idUser, Content, idLT, SoLanXem, AnHien) VALUES
    ('51', 'Tite: "Brazil chơi một trong những trận hay nhất thời của tôi"', 
'HLV tuyển Brazil ca ngợi các học trò sau trận thắng Peru 5-0.',
'/img/hinh/bd6.png', NULL, 1, 
'Brazil bị người hâm mộ la ó ở hai trận đầu tiên với Bolivia và Venezuela. Tuy nhiên, họ nhận những tràng vỗ tay tán thưởng ở lượt đấu cuối cùng khi trút năm bàn vào lưới Peru. Đội chủ nhà, nhờ đó, vào tứ kết với ngôi đầu bảng A.',
21, 10, 0)`;
    
    return db.load(sql);
  },
};