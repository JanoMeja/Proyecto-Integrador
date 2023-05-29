const db = require('../database/models');
const user = db.Usuario
const bcrypt = require('bcryptjs');

const userController = {
    formRegister: (req,res) => {
        return res.render('registro')
    },
    registerPost: function(req, res) {
        let info = req.body;
        console.log(req.body)
        let pass = info.contrasenia
        info.contrasenia = bcrypt.hashSync(pass, 10)

        user.create(info)
        .then(function(result) {
            return res.redirect('/users/login');
        })
        .catch(function(error) {
            console.log(error);
        });
    },
    formLogin: (req,res) => {
        return res.render('login')
    },
    loginPost: (req, res) => {
        return res.redirect('/productos/all')
    },
    perfil: (req,res) => {
        return res.render ('profile')
    },
    editar: (req,res) => {
        return res.render ('profile-edit')
    }
};

module.exports = userController;