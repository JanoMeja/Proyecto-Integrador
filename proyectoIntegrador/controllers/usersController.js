const db = require('../database/models');
const user = db.Usuario
const bcrypt = require('bcryptjs');

const userController = {
    registro: (req,res) => {
        return res.render('registro')
    },
    store: function(req, res) {
        let info = req.body;

        let userStore = {
            name: info.name,
            email: info.email,
            password: bcrypt.hashSync(info.password, 10),
            remember_token: ""
        }

  
        user.create(userStore)
        .then(function(result) {
            return res.redirect('/users/login');
        })
        .catch(function(error) {
            console.log(error);
        });
    },
    login: (req,res) => {
        return res.render('login')
    },
    loginPost: function(req, res) {
        let emailBuscado = req.body.email;
        let pass = req.body.password;

        let filtrado = {
            where: [{email: emailBuscado}]
        };
        user.findOne(filtrado)
        .then((result) => {

            if (result != null) {
                let claveCorrecta = bcrypt.compareSync(pass, result.password)
                if (claveCorrecta) {
                    return res.send("Existe el mail y la password es correcta");
                } else {
                    return res.send("Existe el mail y pero la password es incorrecta");
                }
            } else {
                return res.send("No Existe el mail")
            }
            
        }).catch((err) => {
            console.log(err);
        });
       
    },
    perfil: (req,res) => {
        return res.render ('profile')
    },
    editar: (req,res) => {
        return res.render ('profile-edit')
    }
};

module.exports = userController;