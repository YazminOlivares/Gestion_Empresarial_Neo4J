const express = require('express');
var router = express.Router();
const controladorProyecto = require('../controlador/controladorProyecto');


//Q06. Encontrar los proyectos que corresponden a un cliente en específico.
router.route('/q06').get(controladorProyecto.getProyectoCliente);

//Q13. Cambie un proyecto en específico a otra sucursal, incluyendo la totalidad de participantes en el proyecto .
router.route('/q13').delete(controladorProyecto.transferirProyecto);

module.exports = router;