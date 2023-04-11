const camisetas = require('../db/camisetas')

const productosController = {
    index: function (req, res) {
        return res.render('productos', {
            lista: camisetas.productos,
            usuarios: camisetas.usuario
        })

    },
    detalle: function (req, res) {
        return res.render('detalle-productos', {
            lista: camisetas.comentarios,
            usuarios: camisetas.usuario
        })

    },
    aniadir: function (req, res) {
        return res.render('aniadir-productos', {
            lista: camisetas.productos,
            usuarios: camisetas.usuario
        })

    }
}

module.exports = productosController;