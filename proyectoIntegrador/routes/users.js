var express = require('express');
var router = express.Router();
const usersController = require('../controllers/usersController');

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});
router.get('/registro', usersController.registro);
router.get('/login', usersController.login);
router.get('/profile', usersController.perfil);
router.get('/profile-edit', usersController.editar);


module.exports = router;
