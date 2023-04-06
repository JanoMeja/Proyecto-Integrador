const camisetas = require('../db/camisetas')

const productosController = {
    index: function (req, res) {
        return res.render('productos', {
            lista: camisetas.lista
        })

    }
}

module.exports = productosController;