var express = require('express');
var router = express.Router();
const usersController = require('../controllers/usersController');

/* GET users listing. */
router.get('/', function (req, res, next) {
  res.send('respond with a resource');
});
router.get('/registro', usersController.formRegister);
router.post('/registro', usersController.registerPost)

router.get('/login', usersController.formLogin);
router.post('/login', usersController.loginPost)
router.get('/logout', usersController.logout)
router.get('/profile/:id', usersController.perfil);
router.get('/profile-edit/:id', usersController.editar);
router.post('/profile-edit/:id', usersController.actualizar)


module.exports = router;
