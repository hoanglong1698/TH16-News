var db = require('../utils/db');

module.exports = {
    all: () => {
        return db.load('select * from users');
    },
    addUser: (user) => {
        //var sql = "insert into users (`HoTen`,`Username`,`Password`,`DiaChi`,`Dienthoai`,`Email`,`NgayDangKy`,`NgaySinh`,`GioiTinh`,`VipPresent`) values ("+ user.HoTen + "," + user.Username + "," + user.Password + "," + user.DiaChi + "," + user.DienThoai + "," + user.Email + "," + user.NgayDangKy+ "," + user.NgaySinh + "," + user.GioiTinh + "," + user.VipPresent + ");"
        var sql = `insert into users (HoTen, Username, Password, DiaChi, DienThoai , Email , NgayDangKy , NgaySinh , GioiTinh , VipPresent)
                    values ('${user.HoTen}','${user.Username}','${user.Password}','${user.DiaChi}','${user.DienThoai}','${user.Email}','${user.NgayDangKy}','${user.NgaySinh}','${user.GioiTinh}','${user.VipPresent}')`
        return db.load(sql);
    }

};

