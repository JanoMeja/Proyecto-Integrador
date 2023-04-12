const camisetas = require('../db/camisetas');


const userController = {
    registro : function (req, res) {
        return res.render('registro', {
            usuario: camisetas.usuario
        })

    },
    login : function (req, res) {
        return res.render('login', {
            usuario: camisetas.usuario
        })

    },
    perfil : function (req, res) {
        return res.render('profile', {
            lista : camisetas.productos,
            usuario: camisetas.usuario
        })

    },
    editar : function (req, res) {
        return res.render('profile-edit', {
            usuario: camisetas.usuario
        })

    }
};

module.exports = userController;