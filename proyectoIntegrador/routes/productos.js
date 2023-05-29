/* requerir los modulos */
const express = require ("express");
const router = express.Router();
const productosController = require('../controllers/productosController');

/* crear sufijos */
router.get('/all', productosController.findAll);


/* exportar modulo */
module.exports = router;

