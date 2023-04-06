const express = require ("express");
const router = express.Router();
const loginController = require('../controllers/loginControllers')

/* crear sufijos */

router.get('/', loginController.login);

/* exportar modulo */

module.exports = router;