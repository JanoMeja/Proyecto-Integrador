const camisetas = require('../db/camisetas')


const userController = {
    registro : function (req, res) {
        return res.render('registro', {
            usuarios: camisetas.usuario
        })

    },
    login : function (req, res) {
        return res.render('login', {
            usuarios: camisetas.usuario
        })

    },
    perfil : function (req, res) {
        return res.render('profile', {
            lista : camisetas.productos,
            usuarios: camisetas.usuario
        })

    },
    editar : function (req, res) {
        return res.render('profile-edit', {
            usuarios: camisetas.usuario
        })

    }
}

module.exports = userController;