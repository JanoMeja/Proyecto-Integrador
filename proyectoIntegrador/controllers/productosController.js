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
    let rel = {
     include: [
      {association: 'comentario', include: [{association: "usuarios"}]},
      { association: "usuarios" }
    ]
  }
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
    if (req.session.user != null) {
      productos.findByPk(id)
      .then((result) => {
        console.log(result);
        return res.render("editar-productos", { producto: result });
      })
      .catch((err) => {
        console.log(err);
      });
    } else {
      return res.redirect('/users/login')
    }
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
    if (req.session.user != null) {
      productos.destroy({
        where: [{ id: idDelete }],
      })
      .then((result) => {
        return res.redirect("/productos/all");
      })
      .catch((err) => {
        console.log(err);
      });
    } else {
      return res.redirect('/users/login')
    }
    
  },
  agregarComent: (req, res) => {
   let id = req.params.id
   
    if ( req.body.comentario == '') {
      res.redirect('productos/detalle-productos/'+ id)
    } else{
      if (req.session.user != null) { 
        let info = {
          comentarios: req.body.comentario,
          idUsuario: req.session.user.id,
          idPost: id,
          }
      comentarios.create(info)
            .then(function (result) {
                return res.redirect('/productos/detalle-productos/'+ id);
            })
            .catch(function (error) {
                console.log(error);
            });
          }
          else { 
            return res.redirect('/users/login')
          }
    }
  }
};


module.exports = productosController;