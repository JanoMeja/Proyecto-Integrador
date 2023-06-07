const db = require('../database/models');
const user = db.Usuario
const bcrypt = require('bcryptjs');

const userController = {
    formRegister: (req, res) => {
        return res.render('registro')
    },
    registerPost: function (req, res) {
        let info = req.body;
        /*let pass = info.contrasenia
        info.contrasenia = bcrypt.hashSync(pass, 10)*/

        user.create(info)
            .then(function (result) {
                return res.redirect('/users/login');
            })
            .catch(function (error) {
                console.log(error);
            });
    },
    formLogin: (req, res) => {
        return res.render('login')
    },
    loginPost: (req, res) => {
        let info = req.body;
        let emailBuscado = req.body.email;
        /*let pass = req.body.contrasenia;*/

        let filtrado = {
            where: [{ email: emailBuscado }]
        };
        user.findOne(filtrado)
            .then((result) => {

                if (result != null) {
                    /*let claveCorrecta = bcrypt.compareSync(pass, result.contrasenia)*/
                    if (result.dataValues.contrasenia == info.contrasenia) {
                        /* poner en session */

                        req.session.user = result.dataValues;
                    
                        return res.redirect('/productos/all');

                    } else {
                        return res.send("La contraseña ingresada es incorrecta");
                    }
                } else {
                    return res.send("Este mail es inexistente")
                }

            }).catch((err) => {
                console.log(err);
            });


    },
    perfil: (req, res) => {
        let id = req.params.id; 
        user.findByPk(id)
          .then(function (result) {
            return res.render("profile", {
              usuario: result,
            });
          })
          .catch(function (error) {
            console.log(error);
          });
      },
    editar: (req, res) => {
        return res.render('profile-edit')
    }
};

module.exports = userController;