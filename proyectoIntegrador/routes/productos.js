/* requerir los modulos */
const express = require ("express");
const router = express.Router();
const productosController = require('../controllers/productosController');

/* crear sufijos */
router.get('/', productosController.index);
router.get('/detalle-productos', productosController.detalle)
router.get('/aniadir-productos', productosController.aniadir)

/* exportar modulo */
module.exports = router;

