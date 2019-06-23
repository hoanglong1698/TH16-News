var db = require('../utils/db');

module.exports = {
  all: () => {
    return db.load('select * from users');
  },

  single: id => {
    return db.load(`select * from users where idUser = ${id}`);
  },

  singleByUserName: userName => {
    return db.load(`select * from users where Username = '${userName}'`);
  },

  add: entity => {
    return db.add('users', entity);
  },

  update: entity => {
    var id = entity.idUser;
    delete entity.idUser;
    return db.update('users', 'idUser', entity, id);
  },

  updateProfile: (id, name, email, dob) => {
    return db.load(`update users set Name="${name}", Email = "${email}", DOB = "${dob}" where idUser =${id}`)
  },

  delete: id => {
    return db.delete('users', 'idUser', id);
  },

  addUser: (user) => {

    //var sql = "insert into users (`HoTen`,`Username`,`Password`,`DiaChi`,`Dienthoai`,`Email`,`NgayDangKy`,`NgaySinh`,`GioiTinh`,`VipPresent`) values ("+ user.HoTen + "," + user.Username + "," + user.Password + "," + user.DiaChi + "," + user.DienThoai + "," + user.Email + "," + user.NgayDangKy+ "," + user.NgaySinh + "," + user.GioiTinh + "," + user.VipPresent + ");"
    var sql = `insert into users (Name, Username, Password , Email  , DOB ,  Permission)
                    values ('${user.Name}','${user.Username}','${user.Password}','${user.Email}','${user.DOB}','${user.Permission}')`
    return db.load(sql);
  },

  register: (user) => {
    console.log(user)
    //var sql = "insert into users (`HoTen`,`Username`,`Password`,`DiaChi`,`Dienthoai`,`Email`,`NgayDangKy`,`NgaySinh`,`GioiTinh`,`VipPresent`) values ("+ user.HoTen + "," + user.Username + "," + user.Password + "," + user.DiaChi + "," + user.DienThoai + "," + user.Email + "," + user.NgayDangKy+ "," + user.NgaySinh + "," + user.GioiTinh + "," + user.VipPresent + ");"
    var sql = `insert into users (Name, Username, Password , Email  , DOB ,  Permission)
                    values ('${user.Name}','${user.Username}','${user.Password}','${user.Email}','${user.DOB}','${user.Permission}')`
    return db.load(sql);
  },
  deleteUser: (id) => {

    //var sql = "insert into users (`HoTen`,`Username`,`Password`,`DiaChi`,`Dienthoai`,`Email`,`NgayDangKy`,`NgaySinh`,`GioiTinh`,`VipPresent`) values ("+ user.HoTen + "," + user.Username + "," + user.Password + "," + user.DiaChi + "," + user.DienThoai + "," + user.Email + "," + user.NgayDangKy+ "," + user.NgaySinh + "," + user.GioiTinh + "," + user.VipPresent + ");"
    var sql = `delete from users where idUser = 1`;

    return db.load(sql);
  },
  editUser: (user) => {
    console.log(user);
    //var sql = "insert into users (`HoTen`,`Username`,`Password`,`DiaChi`,`DienThoai`,`Email`,`NgayDangKy`,`NgaySinh`,`GioiTinh`,`VipPresent`) values ("+ user.HoTen + "," + user.Username + "," + user.Pcassword + "," + user.DiaChi + "," + user.DienThoai + "," + user.Email + "," + user.NgayDangKy+ "," + user.NgaySinh + "," + user.GioiTinh + "," + user.VipPresent + "," + user.Phanquanly + "," + user.Trangthai + ");"
    var sql = ` UPDATE users SET Username = '${user.Username}',Password = '${user.Password}',Email = '${user.Email}',DOB = '${user.DOB}',Permission  = '1',Name = '${user.Name}'  where idUser = 1`
    return db.load(sql);
  },

  login: (user) => {
    //var sql = "insert into users (`HoTen`,`Username`,`Password`,`DiaChi`,`DienThoai`,`Email`,`NgayDangKy`,`NgaySinh`,`GioiTinh`,`VipPresent`) values ("+ user.HoTen + "," + user.Username + "," + user.Password + "," + user.DiaChi + "," + user.DienThoai + "," + user.Email + "," + user.NgayDangKy+ "," + user.NgaySinh + "," + user.GioiTinh + "," + user.VipPresent + ");"
    var sql = ` SELECT * from users where Username = '${user.Username}' and Password = '${user.Password}'`
    return db.load(sql);
  },


};

