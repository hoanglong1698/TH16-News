var express = require('express');
var exphbs = require('express-handlebars');
var morgan = require('morgan');
var bodyParser = require('body-parser');
var app = express();

app.use(morgan('dev'));
app.use(express.static('public'));
// parse application/x-www-form-urlencoded
app.use(express.json()) 
app.use(bodyParser.urlencoded())


// parse application/json
app.use(bodyParser.json())
app.engine('hbs', exphbs({
    layoutsDir: 'views/_layouts',
    defaultLayout: 'main.hbs'
  }));
  app.set('view engine', 'hbs');

app.get('/admin/adduser', (req, res) => {
    res.render('adduser');
})
app.get('/admin/deleteuser', (req, res) => {
    res.render('deleteuser');
})

app.get('/admin/edituser', (req, res) => {
    res.render('edituser');
})
app.get('/admin/updateadmin', (req, res) => {
    res.render('updateadmin');
})
app.get('/admin', (req, res) => {
    res.render('adminmanage');
})

app.get('/', (req, res) => {
    res.render('admin/vwDashboard/index');
})

app.use('/admin/categories', require('./routes/admin/category.route'));
app.use('/admin/user', require('./routes/admin/users.route'));
app.use('/admin/tag', require('./routes/admin/tag.route'));
app.use('/admin/post_create', require('./routes/admin/post_create.route'));
app.use('/admin/post_approve', require('./routes/admin/post_approve.route'));
app.use('/admin/post_manage', require('./routes/admin/post_manage.route'));

app.listen(3000, () => {
    console.log('Web Server is running at http://localhost:3000');
})
