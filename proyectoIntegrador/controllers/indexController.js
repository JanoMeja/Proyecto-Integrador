

const indexController = {
    index:function(req, res, next) {
        res.render('index', { title: 'Express' });
      },
      resultados: (req, res) => {
        
      }
};

module.exports = indexController;