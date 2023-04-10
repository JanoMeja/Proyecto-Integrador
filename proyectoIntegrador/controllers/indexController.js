const camisetas = require('../db/camisetas')

const indexController = {
    index:function(req, res, next) {
        res.render('index', { title: 'Express' });
      },
    resultados: function (req, res) {
        return res.render('search-results', {
            
        })

    }
};

module.exports = indexController;