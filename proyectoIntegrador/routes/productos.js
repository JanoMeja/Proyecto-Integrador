/* requerir los modulos */
const express = require ("express");
const router = express.Router();
const productosController = require('../controllers/productosController')

/* crear sufijos */

router.get('/', productosController.index);

/* exportar modulo */

module.exports = router;