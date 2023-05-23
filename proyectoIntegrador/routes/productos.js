/* requerir los modulos */
const express = require ("express");
const router = express.Router();
const productosController = require('../controllers/productosController');

/* crear sufijos */
router.get('/all', productosController.findAll);
/*router.get('/id/:id', productosController.show)
router.get('/busqueda', productosController.resultado)*/

/* exportar modulo */
module.exports = router;

