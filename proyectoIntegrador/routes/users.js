var express = require('express');
var router = express.Router();
const userController = require('../controllers/userController');

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});
router.get('/registro', userController.registro);
router.get('/login', userController.login);
router.get('/profile', userController.perfil);
router.get('/profile-edit', userController.editar);


module.exports = router;
