const neo4j = require("neo4j-driver");
let driver = neo4j.driver(
    //'neo4j://127.0.0.1',
    'neo4j://neo4j_Ges:7687',
    neo4j.auth.basic('neo4j', 'neo4j')
);

async function query02() {
    const session = driver.session();
    try {
        const result = await session.run(`
            MATCH (e:Empleado)-[:GESTIONA]->(p:Proyecto)
            WITH e, COUNT(p) AS numProyectos
            WHERE numProyectos > 3
            RETURN e`);
        return result.records.map(record => record.get('e').properties);
    } catch (error) {
        throw error;
    } finally {
        await session.close();
    }
}

async function query03() {
    const session = driver.session();
    try {
        const result = await session.run(`
            MATCH (e:Empleado)-[r:EMPLEADO_DE]->(s:Sucursal)
            WHERE "Desarrollador back-end" IN r.tipo
            MATCH (e)-[:TRABAJA_EN]->(p:Proyecto)
            WITH e, COUNT(p) AS numProyectos
            WHERE numProyectos > 1
            RETURN e, numProyectos`);
        return result.records.map(record => ({
            empleado: record.get('e').properties,
            numProyectos: record.get('numProyectos').toInt()
        }));
    } catch (error) {
        throw error;
    } finally {
        await session.close();
    }
}

async function query05() {
    const session = driver.session();
    try {
        const result = await session.run(`
            MATCH (e:Empleado)-[r:EMPLEADO_DE]->(s:Sucursal)
            WHERE "Soporte de software" IN r.tipo
            OR "Soporte de hardware" IN r.tipo
            OR "Soporte de infraestructura" IN r.tipo
            RETURN e.nombre, s.nombre;`);
        return result.records.map(record => ({
            empleado: record.get('e.nombre'),
            tipo: record.get('s.nombre')
        }));
    } catch (error) {
        throw error;
    } finally {
        await session.close();
    }
}

async function query11() {
    const session = driver.session();

    try {

        await session.run(`
            MATCH (e:Empleado)-[r:EMPLEADO_DE]->(sOrigen:Sucursal {clave: "S01"})
            WHERE ANY(tipo IN r.tipo WHERE tipo CONTAINS "Soporte de infraestructura" OR tipo CONTAINS "Soporte de software" OR tipo CONTAINS "Soporte de hardware")
            MATCH (sDestino:Sucursal {clave: "S02"})
            MERGE (e)-[:EMPLEADO_DE]->(sDestino)
            DELETE r`
        );

        return 'Empleados transferidos exitosamente';
    } catch (error) {
        throw error;
    } finally {
        await session.close();
    }
}

async function query12(clave, nuevoCurp) {
    const session = driver.session();

    try {
        await session.run(`
            MATCH (e:Empleado)-[r:EMPLEADO_DE]->(s:Sucursal {clave: $clave})
            WHERE "Gerente general" IN r.tipo
            DELETE r
        `, {
                clave
            });
      
            await session.run(`
            MATCH (nuevoGerente:Empleado {CURP: $nuevoCurp}), (s:Sucursal {clave: $clave})
            CREATE (nuevoGerente)-[r:EMPLEADO_DE]->(s)
            SET r.tipo = ["Gerente general"]
        `, {
                clave,
                nuevoCurp
            });
        return 'Gerente reemplazado exitosamente';
    } catch (error) {
        throw error;
    } finally {
        await session.close();
    }
}

async function query15() {
    const session = driver.session();

    try {

        await session.run(`
            MATCH (sActual:Sucursal {clave: "S03"})  
            MATCH (sDestino:Sucursal {clave: "S04"})  
            MATCH (e:Empleado)-[r:EMPLEADO_DE]->(sActual)
            WITH e, r, sDestino
            CREATE (e)-[:EMPLEADO_DE]->(sDestino)
            DELETE r;`
        );

        return 'Empleados transferidos exitosamente';
    } catch (error) {
        throw error;
    } finally {
        await session.close();
    }
}

module.exports = { 
    query02, 
    query03, 
    query05,
    query11, 
    query12,
    query15 
};