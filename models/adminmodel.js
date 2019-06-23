var db = require('../utils/db');

module.exports = {
    all: () => {
        return db.load('select * from admin');
        
    },
    editAdmin: (user) => {
        console.log(user);
        //var sql = "insert into users (`HoTen`,`Username`,`Password`,`DiaChi`,`DienThoai`,`Email`,`NgayDangKy`,`NgaySinh`,`GioiTinh`,`VipPresent`) values ("+ user.HoTen + "," + user.Username + "," + user.Pcassword + "," + user.DiaChi + "," + user.DienThoai + "," + user.Email + "," + user.NgayDangKy+ "," + user.NgaySinh + "," + user.GioiTinh + "," + user.VipPresent + "," + user.Phanquanly + "," + user.Trangthai + ");"
        var sql = ` UPDATE admin SET Name = '${user.Name}',Ngaythamgia = '${user.Ngaythamgia}',Phanquanly = '${user.Phanquanly}',Trangthai = '${user.Trangthai}'  where id = 1`
        return db.load(sql);
    },
};
