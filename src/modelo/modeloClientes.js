const neo4j = require("neo4j-driver");
let driver = neo4j.driver(
    //'neo4j://127.0.0.1',
    'neo4j://neo4j_Ges:7687',
    neo4j.auth.basic('neo4j', 'neo4j')
);

async function query16() {
    const session = driver.session();

    try {
        await session.run(`
            MATCH (c1: Cliente {nombre: "Luis Fernández"}), (p1: Proyecto {codigo: "P05"}), (p2: Proyecto {codigo: "P04"})
            WITH c1, p1, p2
            CREATE (c1)-[:CONTRATA]->(p1)
            CREATE (c1)-[:CONTRATA]->(p2);
        `);
        
        await session.run(`
            MATCH (c: Cliente {nombre: "Laura Mejía"})-[r:CONTRATA]->(p: Proyecto)
            WITH r
            DELETE r;
        `);

        return 'Cliente reemplazado exitosamente';

    } catch (error) {
        throw error;
    } finally {
        await session.close();
    }
}

async function query17() {
    const session = driver.session();

    try {
        await session.run(`
            MATCH (c:Cliente)
            WHERE NOT EXISTS((c)-[:CONTRATA]->(: Proyecto))
            AND NOT EXISTS((c)-[:ASISTE_A]->(: Reunion))
            DELETE c;
        `);

        return 'Cliente eliminado exitosamente';

    } catch (error) {
        throw error;
    } finally {
        await session.close();
    }
}

module.exports = { 
    query16,
    query17
};