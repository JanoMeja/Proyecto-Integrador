const camisetas = require('../db/camisetas')

const productosController = {
    index: function (req, res) {
        return res.render('productos', {
            lista: camisetas.lista
        })

    },
    detalle: function (req, res) {
        return res.render('detalle-productos', {
            
        })

    },
    aniadir: function (req, res) {
        return res.render('aniadir-productos', {
            
        })

    }
}

module.exports = productosController;