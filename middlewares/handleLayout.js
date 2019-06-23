var categoryModel = require('../models/category.model');

module.exports = (req, res, next) => {

    if (req.session.isLogged === undefined) {
        req.session.isLogged = false;
    }

    console.log(req.session.isLogged);

    categoryModel.all().then(rows => {
        res.locals.layoutVM = {
            isLogged: req.session.isLogged,
            curUser: req.session.user
        };

        next();
    });

};