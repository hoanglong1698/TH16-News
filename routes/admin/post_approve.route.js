var express = require('express');
var post_approveModel = require('../../models/post_approve.model');

var router = express.Router();

// router.get('/pending', (req, res) => {
//     res.render('admin/vwPosts/approve_pending');
// })

router.get('/pending', (req, res) => {
    post_approveModel.pending()
        .then(rows => {
            res.render('admin/vwPosts/approve_pending', {
                posts: rows
            });
        }).catch(err => {
            console.log(err);
            res.end('error occured.')
        });
})

router.get('/deny', (req, res) => {
    post_approveModel.deny()
    .then(rows => {
        res.render('admin/vwPosts/approve_deny', {
            posts: rows
        });
    }).catch(err => {
        console.log(err);
        res.end('error occured.')
    });
})

router.get('/allow', (req, res) => {
    post_approveModel.allow()
    .then(rows => {
        res.render('admin/vwPosts/approve_allow', {
            posts: rows
        });
    }).catch(err => {
        console.log(err);
        res.end('error occured.')
    });
})

router.get('/pending/update_allow', (req, res) => {
    post_approveModel.update_allow();
    res.redirect('/admin/post_approve/pending');
})
module.exports = router;