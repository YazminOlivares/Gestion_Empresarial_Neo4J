const neo4j = require("neo4j-driver");
let driver = neo4j.driver(
    //'neo4j://127.0.0.1',
    'neo4j://neo4j_Ges:7687',
    neo4j.auth.basic('neo4j', 'neo4j')
);

async function query06(nombre) {
    const session = driver.session();
    try {
        const result = await session.run(`
            MATCH (c: Cliente )-[:CONTRATA]->(p: Proyecto)
            WHERE $nombre IN c.nombre
            RETURN p;`, {
            nombre
        });
        return result.records.map(record => record.get('p').properties);
    } catch (error) {
        throw error;
    } finally {
        await session.close();
    }
}

async function query13() {
    const session = driver.session();

    try {

        await session.run(`
            MATCH (p:Proyecto {codigo:"P01"})<-[:TRABAJA_EN]-(e:Empleado)
            WITH p, collect(e) AS empleados
            MATCH (sDestino:Sucursal {clave:"S02"})
            WITH empleados, sDestino
            MATCH (sActual:Sucursal {clave:"S01"})
            MATCH (e:Empleado)-[r:EMPLEADO_DE]->(sActual)
            WHERE e IN empleados
            DELETE r
            FOREACH (e IN empleados |
                CREATE (e)-[:EMPLEADO_DE]->(sDestino)
            );`
        );

        return 'Proyceto transferido exitosamente';
    } catch (error) {
        throw error;
    } finally {
        await session.close();
    }
}

module.exports = { 
    query06,
    query13
};