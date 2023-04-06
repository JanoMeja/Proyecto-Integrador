const express = require ("express");
const router = express.Router();
const registracionController = require('../controllers/registracionController')

/* crear sufijos */

router.get('/', registracionController.registro);

/* exportar modulo */

module.exports = router;