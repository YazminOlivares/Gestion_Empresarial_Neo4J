const modeloClientes = require('../modelo/modeloClientes');

async function reemplazarCliente(req, res) {
    try {
        const mensaje = await modeloClientes.query16();
        res.data = mensaje;
        res.json({ Mensaje: mensaje });
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: 'Error al reemplazar al cliente' });
    }
}

async function eliminarCliente(req, res) {
    try {
        const mensaje = await modeloClientes.query17();
        res.data = mensaje;
        res.json({ Mensaje: mensaje });
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: 'Error al eliminar cliente' });
    }
}

module.exports = { 
    reemplazarCliente,
    eliminarCliente
};