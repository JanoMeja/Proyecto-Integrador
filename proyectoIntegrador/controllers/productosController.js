const db = require('../database/models');
const productos = db.Producto;
let op = db.Sequelize.Op;


const productosController = {
  findAll: (req, res) => {
    productos.findAll({
      order : [["createdAT", "DESC"]]
    })
      .then(function (resultado) {
        return res.render("productos", { listaProductos: resultado });
      }).catch(function (err) {
        console.log(err);
      });

  },
  show: (req, res) => {
    let id = req.params.id; 
    let rel =  {
      include: { association: "comentario",
      include: {association: "usuario"} }
    };
    productos.findByPk(id, rel)
      .then(function (result) {
        return res.render("detalle-productos", {
          producto: result,
        });
      })
      .catch(function (error) {
        console.log(error);
      });
  },
  resultado: (req, res) => {
    let busqueda = req.query.search;

    productos.findAll({
        where: [
          { nombre: { [op.like]: "%" + busqueda + "%" } },
        ],
      })
      .then(function (result) {
        return res.render("search-results", { listaProductos: result });
      })
      .catch(function (error) {
        console.log(error);
      });
  },
};


module.exports = productosController;