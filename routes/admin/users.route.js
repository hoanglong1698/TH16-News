var express = require('express');
var userModel = require('../../models/user.model');
var adminModel = require('../../models/adminmodel');

var router = express.Router();

router.post('/adduser', (req, res) => {


    var user = {
        Name: req.body.Name,
        Username: req.body.Username,
        Password: req.body.Password,
        Email: req.body.Email,
        DOB: req.body.DOB,
        
        Permission: req.body.Permission,
    };


    userModel.addUser(user);
    res.render('admin/vwUser/adduser', {
        layout: 'main3'
    });
}),

router.post('/register', (req, res) => {


    var user = {
        Name: req.body.Name,
        Username: req.body.Username,
        Password: req.body.Password,
        Email: req.body.Email,
        DOB: req.body.DOB,
        
        Permission: req.body.Permission,
    };
    console.log(user)

    userModel.register(user);
    res.redirect('/admin/user/login');
}),

router.get('/deleteuser', (req, res) => {
    var id = 1;
    userModel.deleteUser(1);

    res.redirect('/admin/user/user-manage');
})
,
router.post('/edituser', (req, res) => {
    console.log(req.body.Permission)    // var id = req.params.id;
    var user = {
        Name: req.body.Name,
        
        Username: req.body.Username,
        Password: req.body.Password,
        
        Email: req.body.Email,
        DOB: req.body.DOB,
        
        Permission : Number(req.body.Permission) ,
    };

    userModel.editUser(user);
    res.render('admin/vwUser/edituser', {
        layout: 'main3'
    });
})

router.post('/updateadmin', (req, res) => {


    var user = {
        
        Name: req.body.Name,
        Ngaythamgia: req.body.Ngaythamgia,
        Phanquanly: req.body.Phanquanly,
        Trangthai:req.body.Trangthai,
        
    };
    adminModel.editAdmin(user);
    res.render('admin/vwUser/updateadmin', {
        layout: 'main3'
    });
 })

 router.get('/login', (req, res) => {
    res.render('admin/vwUser/login', {
        layout: 'main3'
    });
})

router.post('/login', (req, res) => {

    var user = {

        Username: req.body.username,
        Password: req.body.rawPWD,
    };
    console.log(user)
    userModel.login(user)
        .then(data => {

            if (data.length === 0) {

                console.log("no data")
                var vm = {
                    showError: true,
                    errorMsg: 'Login failed'
                };

                res.render('admin/vwUser/adminmanage', {
                    layout: 'main3',
                    vm
                });

            } else {
                req.session.isLogged = true;
                req.session.user = data[0];

                res.redirect('/admin/user');
            }
        })
});


router.get('/', (req, res) => {
    
    adminModel.all()
        .then(rows => {
            res.render('admin/vwUser/adminmanage', {
                admin: rows,
                layout:'main3'
            });
        }).catch(err => {
            console.log(err);

        });
});


router.get('/writer-manage', (req, res) => {
    userModel.all()
        .then(rows => {
            res.render('admin/vwUser/writer-manage', {
                admin: rows,
                layout:'main3'
            });
        }).catch(err => {
            console.log(err);

        });
});

router.get('/user-manage', (req, res) => {
    userModel.all()
        .then(rows => {
            res.render('admin/vwUser/user-manage', {
                admin: rows,
                layout:'main3'
            });
        }).catch(err => {
            console.log(err);

        });
});
router.get('/editer-manage', (req, res) => {
    userModel.all()
        .then(rows => {
            res.render('admin/vwUser/editer-manage', {
                admin: rows,
                layout:'main3'
            });
        }).catch(err => {
            console.log(err);

        });
});


router.post('/logout', (req, res) => {
    console.log("aaaa")
    req.session.isLogged = false;
    req.session.user = null;
    // req.session.cart = [];
    res.redirect(req.headers.referer);
}),

module.exports = router;
