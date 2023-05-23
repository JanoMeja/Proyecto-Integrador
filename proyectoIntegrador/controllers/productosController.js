const db = require('../database/models');
const productos = db.Producto; 


const productosController = {
    findAll: (req, res) => {
          productos.findAll()
          .then(function(resultado) {
              return res.render("productos", { listaProductos : resultado });   
          }).catch(function (err){
              console.log(err);
          });
          
    },
    /* show: (req, res) => {
        let id = req.params.id; 

    productos.findByPk(id, rel)
    .then(function(result) {

      console.log(result);
      return res.render('detalle-productos', {
        productos: result
      })
    })
    .catch(function(error) {
      console.log(error);
    });
    },
    resultado: (req, res) => {
        let busqueda = req.query.productos;

    productos.findAll(
      {
        where: [
         {title: {[op.like]: '%' + busqueda + '%'}}
        ]
      }
    ).then(function(result) {
      return res.render('busqueda', {listaProductos : result})
    })
    .catch(function (error) {
      console.log(error);
    });
  }*/
};


module.exports = productosController;