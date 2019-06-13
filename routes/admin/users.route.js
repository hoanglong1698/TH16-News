var express = require('express');
var userModel = require('../../models/usermodel');

var router = express.Router();

router.post('/', (req, res) => {
    console.log(req.body);

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
    res.render('user');
})

module.exports = router;
