const  modeloProyectos = require('../modelo/modeloProyectos');

async function getProyectoCliente(req, res) {
    try {
        const proyectos = await modeloProyectos.query06(req.body.nombre);
        res.data = proyectos;
        res.json({ Proyectos: proyectos });
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: 'Error al obtener las proyectos' });
    }
}

async function transferirProyecto(req, res) {
    try {
        const mensaje = await modeloProyectos.query13();
        res.data = mensaje;
        res.json({ Mensaje: mensaje });
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: 'Error al transferir el proyecto' });
    }
}

module.exports = { 
    getProyectoCliente,
    transferirProyecto
};