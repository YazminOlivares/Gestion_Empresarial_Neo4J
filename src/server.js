const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const PORT = 3000;


const rutaSucursales = require('./rutas/rutasSucursales');
const rutasProyectos = require('./rutas/rutasProyectos');
const rutasEmpleados = require('./rutas/rutasEmpleados');
const rutasClientes = require('./rutas/rutasClientes');
const logger = require('./rutas/logger');

//middlewares
app.use(logger);
app.use(bodyParser.urlencoded({extended: true }));
app.use(bodyParser.json());

app.use('/api', rutaSucursales, rutasProyectos, rutasEmpleados, rutasClientes);
app.listen(PORT, () => { console.log('Server en http://localhost:' + PORT) });