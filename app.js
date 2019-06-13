var express = require('express');
var exphbs = require('express-handlebars');
var morgan = require('morgan');
var bodyParser = require('body-parser');
var app = express();

app.use(morgan('dev'));
app.use(express.static('public'));
// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }))
 
// parse application/json
app.use(bodyParser.json())
app.engine('hbs', exphbs({
    layoutsDir: 'views/_layouts',
    defaultLayout: 'main.hbs'
  }));
  app.set('view engine', 'hbs');
  
app.get('/', (req, res) => {
    res.render('home');
})

app.get('/admin/user/adduser', (req, res) => {
    res.render('adduser');
})
app.get('/admin/user/deleteuser', (req, res) => {
    res.render('deleteuser');
})

app.get('/admin/user/edituser', (req, res) => {
    res.render('edituser');
})
app.use('/admin/categories', require('./routes/admin/category.route'));
app.use('/admin/user', require('./routes/admin/users.route'));

app.listen(3001, () => {
    console.log('Web Server is running at http://localhost:3001');
})
