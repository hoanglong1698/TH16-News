var express = require('express');
var userModel = require('../../models/usermodel');

var router = express.Router();

router.post('/adduser', (req, res) => {
    

    var user = {
        HoTen: req.body.HoTen,
        Username: req.body.Username,
        Password: req.body.Password,
        DiaChi: req.body.DiaChi,
        Dienthoai: req.body.Dienthoai,
        Email: req.body.Email,
        NgayDangKy: req.body.NgayDangKy,
    
        NgaySinh: req.body.NgaySinh,
        GioiTinh: req.body.GioiTinh,
        VipPresent: req.body.VipPresent,
    };
    userModel.addUser(user);
    res.render('adduser');
})
   
router.post('/deleteuser', (req, res) => {
    console.log('cho');

    var id = req.body.idUser;

    userModel.deleteUser(id);
    res.render('deleteuser');
})
router.post('/edituser', (req, res) => {
    

    var user = {
        idUser: req.body.idUser,
        HoTen: req.body.HoTen,
        Username: req.body.Username,
        Password: req.body.Password,
        DiaChi: req.body.DiaChi,
        Dienthoai: req.body.Dienthoai,
        Email: req.body.Email,
        NgayDangKy: req.body.NgayDangKy,
    
        NgaySinh: req.body.NgaySinh,
        GioiTinh: req.body.GioiTinh,
        VipPresent: req.body.VipPresent,
    };
    userModel.editUser(user);
    res.render('edituser');
})
router.post('/updateadmin', (req, res) => {
    

    var user = {
        idUser: req.body.idUser,
        HoTen: req.body.HoTen,
        Username: req.body.Username,
        Password: req.body.Password,
        DiaChi: req.body.DiaChi,
        Dienthoai: req.body.Dienthoai,
        Email: req.body.Email,
        NgayDangKy: req.body.NgayDangKy,
    
        NgaySinh: req.body.NgaySinh,
        GioiTinh: req.body.GioiTinh,
        VipPresent: req.body.VipPresent,
    };
    userModel.updateadmin(user);
    res.render('updateadmin');
})
router.get('', (req, res) => {
    
    res.render('adminmanage');
})   

module.exports = router;
