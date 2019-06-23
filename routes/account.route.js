var express = require('express');
var bcrypt = require('bcrypt');
var moment = require('moment');
var userModel = require('../models/user.model');
var passport = require('passport');
var auth = require('../middlewares/auth');


var router = express.Router();

router.get('/is-available', (req, res, next) => {
    var user = req.query.username;
    userModel.singleByUserName(user).then(rows => {
        if (rows.length > 0) {
            return res.json(false);
        }
        return res.json(true);
    })
})

router.get('/register', (req, res, next) => {
    res.render('vwAccount/register', { layout: 'main2' });
});

router.post('/register', (req, res, next) => {
    var saltRounds = 10;
    var hash = bcrypt.hashSync(req.body.password, saltRounds);
    var dob = moment(req.body.dob, 'DD/MM/YYYY').format('YYYY-MM-DD');
  
    var entity = {
      Username: req.body.username,
      Password: hash,
      Name: req.body.name,
      Email: req.body.email,
      DOB: dob,
      Permission: 0
    }
  
    userModel.add(entity).then(id => {
      res.redirect('/account/login');
    })
})

router.get('/login', (req, res, next) => {
    res.render('vwAccount/login', { layout: false });
})

router.post('/login', (req, res, next) => {
    passport.authenticate('local', (err, user, info) => {
        if (err)
            return next(err);

        if (!user) {
            return res.render('vwAccount/login', {
                layout: false,
                err_message: info.message
            })
        }

        req.logIn(user, err => {
            if (err)
                return next(err);

            return res.redirect('/');
        });
    })(req, res, next);
})

router.get('/profile/:id', auth, (req, res, next) => {
    res.render('vwAccount/profile', { layout: 'main2' });
})

router.post('/profile/:id', (req, res, next) => {
    var dob = moment(req.body.dob, 'YYYY-MM-DD').format('YYYY-MM-DD');
    var id = req.params.id;
  
    var entity = {
      idUser: id,
      Name: req.body.name,
      Email: req.body.email,
      DOB: dob,
    }
  
    userModel.updateProfile(entity.idUser, entity.Name, entity.Email, entity.DOB).then(id => {
        
        res.redirect('/account/login');
    })
})

router.post('/logout', auth, (req, res, next) => {
    req.logOut();
    res.redirect('/account/login');
})

module.exports = router;