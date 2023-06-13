const db = require('../database/models');
const productos = db.Producto;
const comentarios = db.Comentario;
let op = db.Sequelize.Op;


const productosController = {
  findAll: (req, res) => {
    let criterio = {
      order: [['createdAT', 'DESC']],
      include: [{association: 'comentario'},{association: 'usuarios'}]
    };
    productos.findAll(criterio)
      .then(function (resultado) {
        
        return res.render("productos", { listaProductos: resultado });
      }).catch(function (err) {
        console.log(err);
      });

  },
  detalle: (req, res) => {
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
  Form: (req, res) => {
    return res.render("aniadir-productos");
  },
  guardar: (req, res) => {
    let info = req.body;
    info.userId = req.session.user.id
      productos.create(info)
      .then((result) => {
        return res.redirect("/productos/all");
      })
      .catch((error) => {
        console.log(error);
      });
  },
  formActualizado: (req, res) => {
    let id = req.params.id;
    productos.findByPk(id)
      .then((result) => {
        console.log(result);
        return res.render("editar-productos", { producto: result });
      })
      .catch((err) => {
        console.log(err);
      });
  },
  actualizar: (req, res) => {
    let id = req.params.id;
    let data = req.body;
    productos.update(data, {
        where: [{ id: id }],
      })
      .then((result) => {
        return res.redirect("/productos/detalle-productos/" + id);
      })
      .catch((err) => {
        console.log(err);
      });
  },
  eliminar: (req, res) => {
    let idDelete = req.body.id;
    productos.destroy({
        where: [{ id: idDelete }],
      })
      .then((result) => {
        return res.redirect("/productos/all");
      })
      .catch((err) => {
        console.log(err);
      });
  },
  agregarComent: (req, res) => {
   let id = req.params.id
   let info = {
    comentarios: req.body.comentario,
    idUsuario: req.session.user.id,
    idPost: id,
    }
    if ( info.comentarios == '') {
      res.redirect('productos/detalle-productos/'+ id)
    } else{
      comentarios.create(info)
            .then(function (result) {
                return res.redirect('/productos/detalle-productos/'+ id);
            })
            .catch(function (error) {
                console.log(error);
            });
          }
  }
};


module.exports = productosController;