const neo4j = require("neo4j-driver");
let driver = neo4j.driver(
    //'neo4j://127.0.0.1',
    'neo4j://neo4j_Ges:7687',
    neo4j.auth.basic('neo4j', 'neo4j')
);

async function query01() {
    const session = driver.session();
    try {
        const result = await session.run(`
            MATCH (s:Sucursal)<-[:EMPLEADO_DE]-(e:Empleado)
            WITH s, COUNT(e) AS numEmpleados
            WHERE numEmpleados > 5
            RETURN s
        `);
        return result.records.map(record => record.get('s').properties);
    } catch (error) {
        throw error;
    } finally {
        await session.close();
    }
}

async function query07() {
    const session = driver.session();
    try {
        const result = await session.run(`
            MATCH (c:Cliente)-[rel:ASISTE_A]->(r:Reunion)
            WITH rel.sucursalClave AS sucursal, COUNT(DISTINCT c) AS numClientes
            WHERE numClientes > 5
            RETURN sucursal, numClientes;`);
        return result.records.map(record => ({
            sucursal: record.get('sucursal'),
            visitas: record.get('numClientes')
        }));
    } catch (error) {
        throw error;
    } finally {
        await session.close();
    }
}

module.exports = { query01, query07 };