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
};


module.exports = productosController;