/* requerir los modulos */
const express = require ("express");
const router = express.Router();
const productosController = require('../controllers/productosController');

/* crear sufijos */
router.get('/all', productosController.findAll);

router.get('/detalle-productos/:id', productosController.detalle);
router.post("/detalle-productos/:id", productosController.agregarComent);

router.get('/aniadir',productosController.Form);
router.post('/aniadir',productosController.guardar);

/* Mostrar Form para Actualizar movie */
router.get("/update/:id", productosController.formActualizado);
/* Enviar actualización de movie*/
router.post("/update/:id", productosController.actualizar);

/* Elimnar movie */
router.post("/delete", productosController.eliminar);

/* exportar modulo */
module.exports = router;

