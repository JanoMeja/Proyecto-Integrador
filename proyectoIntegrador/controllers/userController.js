const camisetas = require('../db/camisetas')

const userController = {
    registro : function (req, res) {
        return res.render('registro', {
            
        })

    },
    login : function (req, res) {
        return res.render('login', {
            
        })

    },
    perfil : function (req, res) {
        return res.render('profile', {
            lista: camisetas.lista
        })

    },
    editar : function (req, res) {
        return res.render('profile-edit', {
            
        })

    }
}

module.exports = userController;