const express = require('express');
var router = express.Router();
const controladorClientes = require('../controlador/controladorClientes')

//Q16. Reemplazar un cliente por otro junto con todas sus relaciones
router.route('/q16').delete(controladorClientes.reemplazarCliente);

//Q17. Eliminar a todos los clientes que no tengan un proyecto asignado
router.route('/q17').delete(controladorClientes.eliminarCliente);

module.exports = router;