const modeloSucursales = require('../modelo/modeloSucursales');

async function getSucursales(req, res) {
    try {
        const sucursales = await modeloSucursales.query01();
        res.data = sucursales;
        res.json({ Sucursales: sucursales });
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: 'Error al obtener las sucursales' });
    }
}

async function getSucursalesVisitas(req, res) {
    try {
        const sucursales = await modeloSucursales.query07();
        res.data = sucursales;
        res.json({ Sucursales: sucursales });
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: 'Error al obtener las sucursales' });
    }
}
module.exports = { getSucursales, getSucursalesVisitas };
