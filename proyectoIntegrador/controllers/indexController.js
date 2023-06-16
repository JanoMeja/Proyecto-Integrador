const db = require('../database/models');
const productos = db.Producto;
let op = db.Sequelize.Op;
const indexController = {
    index:function(req, res, next) {
        res.render('index', { title: 'Express' });
      },
      resultado: (req, res) => {
        let busqueda = req.query.search;
    
        productos.findAll({
            where: [
              { nombre: { [op.like]: "%" + busqueda + "%" } },
            ],
          })
          .then(function (result) {
            listaProductos = result
            if (listaProductos.length == 0) {
              return res.render("search-results", { mensaje: "No hay resultados de búsqueda para: " + busqueda });
          } else {
              return res.render("search-results", { listaProductos});
          }
          })
          .catch(function (error) {
            console.log(error);
          });
      }
};

module.exports = indexController;