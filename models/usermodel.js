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
    },
    deleteUser: (id) => {

        //var sql = "insert into users (`HoTen`,`Username`,`Password`,`DiaChi`,`Dienthoai`,`Email`,`NgayDangKy`,`NgaySinh`,`GioiTinh`,`VipPresent`) values ("+ user.HoTen + "," + user.Username + "," + user.Password + "," + user.DiaChi + "," + user.DienThoai + "," + user.Email + "," + user.NgayDangKy+ "," + user.NgaySinh + "," + user.GioiTinh + "," + user.VipPresent + ");"
        var sql = `delete from users where idUser = '${id}'`;  
        return db.load(sql);
    },
    editUser: (user) => {
        //var sql = "insert into users (`HoTen`,`Username`,`Password`,`DiaChi`,`DienThoai`,`Email`,`NgayDangKy`,`NgaySinh`,`GioiTinh`,`VipPresent`) values ("+ user.HoTen + "," + user.Username + "," + user.Password + "," + user.DiaChi + "," + user.DienThoai + "," + user.Email + "," + user.NgayDangKy+ "," + user.NgaySinh + "," + user.GioiTinh + "," + user.VipPresent + ");"
        var sql = ` UPDATE users SET HoTen = '${user.HoTen}', Username = '${user.Username},'Password = '${user.Password}','DiaChi = '${user.DiaChi},'DienThoai = '${user.DienThoai},'Email = '${user.Email},'NgayDangKy = '${user.NgayDangKy},'GioiTinh = '${user.GioiTinh},'VipPresent = '${user.VipPresent} WHERE idUser = '${user.idUser}'`
        return db.load(sql);
    },
};

