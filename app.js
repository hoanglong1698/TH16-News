var express = require('express');
var morgan = require('morgan');
var bodyParser = require('body-parser');
var app = express();

app.use(morgan('dev'));
app.use(express.static('public'));
app.use(bodyParser.urlencoded({ extended: true }))

require('./middlewares/view-engine')(app);
require('./middlewares/session')(app);
require('./middlewares/passport')(app);

app.use(require('./middlewares/locals.mdw'));
app.use(require('./middlewares/auth-locals.mdw'));

app.get('/admin', (req, res) => {
    res.render('admin/vwDashboard/index', {
        layout : 'main'
    });
})

//app.use('/admin', require('./routes/admin/users.route'));
app.use('/', require('./routes/Home.route'));
app.use('/account', require('./routes/account.route'));
app.use('/categories', require('./routes/Article.route')); //chứa danh sách bài viết , và chi tiết bài viết
app.use('/admin/categories', require('./routes/admin/category.route'));
app.use('/admin/user', require('./routes/admin/users.route'));
app.use('/admin/tag', require('./routes/admin/tag.route'));
app.use('/admin/post_create', require('./routes/admin/post_create.route'));
app.use('/admin/post_approve', require('./routes/admin/post_approve.route'));
app.use('/admin/post_manage', require('./routes/admin/post_manage.route'));
app.listen(3000, () => {
    console.log('Web Server is running at http://localhost:3000');
})
