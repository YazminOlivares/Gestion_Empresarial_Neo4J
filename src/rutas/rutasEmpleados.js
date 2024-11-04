const express = require('express');
var router = express.Router();
const controladorEmpleados = require('../controlador/controladorEmpleados');

//Q02. Encontrar los gerentes que gestionan más de 3 proyectos simultáneamente.
router.route('/q02').get(controladorEmpleados.getGerentes);

//Q03. Obtener la lista de desarrolladores con especialización en back-end que están trabajando en más de 2 proyectos
router.route('/q03').get(controladorEmpleados.getDesBackend);

//Q05. Listar los empleados de soporte técnico de todas las sucursales
router.route('/q05').get(controladorEmpleados.getEmpleadosSoporte);

//Q11. Transferir todos los empleados de soporte técnico de una sucursal en específico hacia otra sucursal.
router.route('/q11').delete(controladorEmpleados.transferirEmpleadosSoporte);

//Q12. Reemplaza al gerente de una sucursal en específico.
router.route('/q12').delete(controladorEmpleados.reemplazarGerente);

//Q15. Todos los empleados de una sucursal determinada son transferidos a otra sucursal por cierre de sucursal de origen.
router.route('/q15').delete(controladorEmpleados.transferirEmpleadosTodos);

module.exports = router;