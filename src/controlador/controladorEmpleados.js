const modeloEmpleados = require('../modelo/modeloEmpleados');

async function getGerentes(req, res) {
    try {
        const gerentes = await modeloEmpleados.query02();
        res.data = gerentes;
        res.json({ Gerentes: gerentes });
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: 'Error al obtener los gerentes' });
    }
}

async function getDesBackend(req, res) {
    try {
        const desarroladores = await modeloEmpleados.query03();
        res.data = desarroladores;
        res.json({ Desarroladores: desarroladores });
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: 'Error al obtener los desarrolladores backend' });
    }
}

async function getEmpleadosSoporte(req, res) {
    try {
        const desarroladores = await modeloEmpleados.query05();
        res.data = desarroladores;
        res.json({ Desarroladores: desarroladores });
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: 'Error al obtener los empleados de soporte' });
    }
}

async function transferirEmpleadosSoporte(req, res) {
    try {
        const mensaje = await modeloEmpleados.query11();
        res.data = mensaje;
        res.json({ Mensaje: mensaje });
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: 'Error al transferir a los empleados' });
    }
}

async function reemplazarGerente(req, res) {
    try {
        const mensaje = await modeloEmpleados.query12(req.body.clave, req.body.nuevoCurp);
        res.data = mensaje;
        res.json({ Mensaje: mensaje });
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: 'Error al reemplazar al gerente' });
    }
}

async function transferirEmpleadosTodos(req, res) {
    try {
        const mensaje = await modeloEmpleados.query15();
        res.data = mensaje;
        res.json({ Mensaje: mensaje });
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: 'Error al transferir a los empleados' });
    }
}

module.exports = { 
    getGerentes, 
    getDesBackend, 
    getEmpleadosSoporte, 
    transferirEmpleadosSoporte,
    reemplazarGerente,
    transferirEmpleadosTodos 
};