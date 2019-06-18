var express = require('express');
var post_manageModel = require('../../models/post_manage.model');

var router = express.Router();

// router.get('/pending', (req, res) => {
//     res.render('admin/vwPosts/approve_pending');
// })

router.get('/pending', (req, res) => {
    post_manageModel.pending()
        .then(rows => {
            res.render('admin/vwPosts/post_manage_pending', {
                posts: rows
            });
        }).catch(err => {
            console.log(err);
            res.end('error occured.')
        });
})

router.get('/deny', (req, res) => {
    post_manageModel.deny()
    .then(rows => {
        res.render('admin/vwPosts/post_manage_deny', {
            posts: rows
        });
    }).catch(err => {
        console.log(err);
        res.end('error occured.')
    });
})

router.get('/allow', (req, res) => {
    post_manageModel.allow()
    .then(rows => {
        res.render('admin/vwPosts/post_manage_allow', {
            posts: rows
        });
    }).catch(err => {
        console.log(err);
        res.end('error occured.')
    });
})
module.exports = router;