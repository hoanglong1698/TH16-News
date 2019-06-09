var express = require('express');
var exphbs = require('express-handlebars');
var morgan = require('morgan');

var app = express();

app.use(morgan('dev'));
app.use(express.static('public'));

app.engine('hbs', exphbs({
    layoutsDir: 'views/_layouts',
    defaultLayout: 'main.hbs'
  }));
  app.set('view engine', 'hbs');

app.get('/', (req, res) => {
    res.render('home');
})

app.use('/admin/categories', require('./routes/admin/category.route'))

app.listen(3000, () => {
    console.log('Web Server is running at http://localhost:3000');
})
