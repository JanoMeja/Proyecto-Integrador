/* requerir los modulos */
const express = require ("express");
const router = express.Router();
const productosController = require('../controllers/productosController');

/* crear sufijos */
router.get('/all', productosController.findAll);
router.get('/detalle-productos/:id', productosController.show);

router.get('/search-results', productosController.resultado);

router.get('/aniadir',productosController.showForm)
router.post('/aniadir',productosController.store)

/* exportar modulo */
module.exports = router;

