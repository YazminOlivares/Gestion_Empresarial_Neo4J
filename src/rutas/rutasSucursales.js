const express = require('express');
var router = express.Router();
const controladorSucursal = require('../controlador/controladorSucursales');

//Q01. Obtener la lista de sucursales que tienen más de 5 empleados
router.route('/q01').get(controladorSucursal.getSucursales);

//Q07. Obtener la lista de sucursales que han recibido visitas de más de 5 clientes diferentes.
router.route('/q07').get(controladorSucursal.getSucursalesVisitas);

module.exports = router;