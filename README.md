# --------------------- ESCENARIO DE DATOS ----------------------

## Sucursales
Cada sucursal tiene un identificador único clave, además de información como nombre, dirección, ciudad y capacidad. 

```
CREATE 
    (s1: Sucursal {clave:"S01", nombre:"Sucursal Central", direccion:"Av. Principal 123", ciudad:"Ciudad A", capacidad:10}),
    (s2: Sucursal {clave:"S02", nombre:"Sucursal Norte", direccion:"Calle Norte 456", ciudad:"Ciudad B", capacidad:6}),
    (s3: Sucursal {clave:"S03", nombre:"Sucursal Sur", direccion:"Av. Sur 789", ciudad:"Ciudad C", capacidad:5}),
    (s4: Sucursal {clave:"S04", nombre:"Sucursal Este", direccion:"Calle Este 101", ciudad:"Ciudad D", capacidad:8});
```
## Empleados 
Cada empleado tiene un CURP único y atributos como nombre, teléfono, cuenta bancaria y contratación (fecha de contratación). Los empleados están asignados a las sucursales a través de relaciones EMPLEADO_DE, que también incluyen un atributo tipo para especificar su rol en la sucursal (e.g., "Gerente general", "Desarrollador full-stack").

    Ejemplos:
        - Juan Pérez (CURP001), empleado de la Sucursal Central (S01) como "Gerente general".
        - Ana García (CURP002), también en S01 como "Desarrollador full-stack".
```
CREATE
    (e1: Empleado {CURP:"CURP001", nombre:"Juan Pérez", telefono:"555-1234", cuenta:"1234567890", contratacion:"2022-01-15"}),
    (e2: Empleado {CURP:"CURP002", nombre:"Ana García", telefono:"555-5678", cuenta:"9876543210", contratacion:"2021-05-23"}),
    (e3: Empleado {CURP:"CURP003", nombre:"Carlos López", telefono:"555-1111", cuenta:"1122334455", contratacion:"2023-03-10"}),
    (e4: Empleado {CURP:"CURP004", nombre:"Luisa Martínez", telefono:"555-2222", cuenta:"2233445566", contratacion:"2020-11-02"}),
    (e5: Empleado {CURP:"CURP005", nombre:"María Fernández", telefono:"555-3333", cuenta:"3344556677", contratacion:"2019-09-18"}),
    (e6: Empleado {CURP:"CURP006", nombre:"Pedro Sánchez", telefono:"555-4444", cuenta:"4455667788", contratacion:"2021-12-22"}),
    (e7: Empleado {CURP:"CURP007", nombre:"Clara Ríos", telefono:"555-5555", cuenta:"5566778899", contratacion:"2022-08-05"}),
    (e8: Empleado {CURP:"CURP008", nombre:"Alberto Morales", telefono:"555-6666", cuenta:"6677889900", contratacion:"2021-04-12"}),
    (e9: Empleado {CURP:"CURP009", nombre:"Sofía Castillo", telefono:"555-7777", cuenta:"7788990011", contratacion:"2020-06-07"}),
    (e10: Empleado {CURP:"CURP010", nombre:"Diego Ramírez", telefono:"555-8888", cuenta:"8899001122", contratacion:"2019-07-19"}),
    (e11: Empleado {CURP:"CURP011", nombre:"Laura Reyes", telefono:"555-9999", cuenta:"9900112233", contratacion:"2022-02-20"}),
    (e12: Empleado {CURP:"CURP012", nombre:"Miguel Delgado", telefono:"555-1010", cuenta:"1011223344", contratacion:"2023-05-18"}),
    (e13: Empleado {CURP:"CURP013", nombre:"Elena Vargas", telefono:"555-1112", cuenta:"1122334455", contratacion:"2021-01-25"}),
    (e14: Empleado {CURP:"CURP014", nombre:"Ricardo Navarro", telefono:"555-1212", cuenta:"1223344556", contratacion:"2020-03-08"}),
    (e15: Empleado {CURP:"CURP015", nombre:"Gabriela Méndez", telefono:"555-1313", cuenta:"1334455667", contratacion:"2018-10-03"}),
    (e16: Empleado {CURP:"CURP016", nombre:"Andrés Soto", telefono:"555-1414", cuenta:"1445566778", contratacion:"2019-04-10"}),
    (e17: Empleado {CURP:"CURP017", nombre:"Carmen Estrada", telefono:"555-1515", cuenta:"1556677889", contratacion:"2021-11-15"}),
    (e18: Empleado {CURP:"CURP018", nombre:"Javier Guzmán", telefono:"555-1616", cuenta:"1667788990", contratacion:"2023-08-30"}),
    (e19: Empleado {CURP:"CURP019", nombre:"Patricia Espinoza", telefono:"555-1717", cuenta:"1778899001", contratacion:"2022-05-23"}),
    (e20: Empleado {CURP:"CURP020", nombre:"Alejandro Ortiz", telefono:"555-1818", cuenta:"1889900112", contratacion:"2019-11-30"}),
    (e21: Empleado {CURP:"CURP021", nombre:"Monica Paredes", telefono:"555-1919", cuenta:"1990011223", contratacion:"2021-12-01"}),
    (e22: Empleado {CURP:"CURP022", nombre:"Esteban Pérez", telefono:"555-2020", cuenta:"2001122334", contratacion:"2020-01-11"}),
    (e23: Empleado {CURP:"CURP023", nombre:"Rosa Herrera", telefono:"555-2121", cuenta:"2112233445", contratacion:"2023-04-17"}),
    (e24: Empleado {CURP:"CURP024", nombre:"David Torres", telefono:"555-2222", cuenta:"2233445566", contratacion:"2022-06-25"}),
    (e25: Empleado {CURP:"CURP025", nombre:"Silvia Rojas", telefono:"555-2323", cuenta:"2344556677", contratacion:"2020-10-30"}),
    (e26: Empleado {CURP:"CURP026", nombre:"Fernando Aguilar", telefono:"555-2424", cuenta:"2455667788", contratacion:"2019-09-15"}),
    (e27: Empleado {CURP:"CURP027", nombre:"Isabel Peña", telefono:"555-2525", cuenta:"2566778899", contratacion:"2022-03-05"}),
    (e28: Empleado {CURP:"CURP028", nombre:"Tomás Lara", telefono:"555-2626", cuenta:"2677889900", contratacion:"2021-08-07"}),
    (e29: Empleado {CURP:"CURP029", nombre:"Mariana Ayala", telefono:"555-2727", cuenta:"2788990011", contratacion:"2023-07-18"}),
    (e30: Empleado {CURP:"CURP030", nombre:"Francisco Villanueva", telefono:"555-2828", cuenta:"2899001122", contratacion:"2020-05-22"});`
```
## Proyectos 
Cada proyecto tiene un codigo y atributos como nombre, descripcion, fInicio (fecha de inicio), fFin (fecha de finalización) y presupuesto. 
```
CREATE
    (p1: Proyecto {codigo:"P01", nombre:"Proyecto Alfa", descripcion:"Desarrollo de software", fInicio:"2022-01-15", fFin:"2023-01-15", presupuesto:"150000"}),
    (p2: Proyecto {codigo:"P02", nombre:"Proyecto Beta", descripcion:"Implementación de red", fInicio:"2021-05-23", fFin:"2022-03-15", presupuesto:"30000"}),
    (p3: Proyecto {codigo:"P03", nombre:"Proyecto Gamma", descripcion:"Mantenimiento de infraestructura", fInicio:"2023-03-10", fFin:"2023-08-10", presupuesto:"2000000"}),
    (p4: Proyecto {codigo:"P04", nombre:"Proyecto Delta", descripcion:"Seguridad y ciberseguridad", fInicio:"2020-11-02", fFin:"2021-11-02", presupuesto:"2000000"}),
    (p5: Proyecto {codigo:"P05", nombre:"Proyecto Épsilon", descripcion:"Consultoría empresarial", fInicio:"2019-09-18", fFin:"2020-06-18", presupuesto:"35000"}),
    (p6: Proyecto {codigo:"P06", nombre:"Proyecto Zeta", descripcion:"Capacitación interna", fInicio:"2021-12-22", fFin:"2022-09-22", presupuesto:"25000"}),
    (p7: Proyecto {codigo:"P07", nombre:"Proyecto Eta", descripcion:"Optimización de procesos", fInicio:"2022-08-05", fFin:"2023-06-05", presupuesto:"145000"}),
    (p8: Proyecto {codigo:"P08", nombre:"Proyecto Theta", descripcion:"Análisis de datos", fInicio:"2021-04-12", fFin:"2022-02-12", presupuesto:"130000"});
```
## Clientes
Los clientes son entidades externas con los que la organización trabaja. Cada cliente tiene un nombre, teléfono, empresa, y correo electrónico.
```
CREATE 
    (c1: Cliente {nombre:"Jorge Andrade", telefono:"555-1234", empresa:"TechCorp", correo:"jorge@techcorp.com"}),
    (c2: Cliente {nombre:"Laura Mejía", telefono:"555-5678", empresa:"Innova Solutions", correo:"laura@innovasolutions.com"}),
    (c3: Cliente {nombre:"Carlos Ibáñez", telefono:"555-1111", empresa:"Data Analytics", correo:"carlos@dataanalytics.com"}),
    (c4: Cliente {nombre:"Ana Torres", telefono:"555-2222", empresa:"Market Group", correo:"ana@marketgroup.com"}),
    (c5: Cliente {nombre:"Luis Fernández", telefono:"555-3333", empresa:"Tech Solutions", correo:"luis@techsolutions.com"}),
    (c6: Cliente {nombre:"Luis Herrera", telefono:"555-4444", empresa:"Tech Solutions", correo:"luis@techsolutions.com"}),
    (c7: Cliente {nombre:"Sara Gómez", telefono:"555-5555", empresa:"Creative Minds", correo:"sara@creativeminds.com"});
```
## Reuniones 
Las reuniones son eventos específicos relacionados con proyectos o planificación de tareas dentro de la organización. Cada reunión tiene una fecha, hora y un motivo. 
```
CREATE
    (r1: Reunion {fecha:"2023-01-15", hora:"10:00", motivo:"Planificación de proyecto"}),
    (r2: Reunion {fecha:"2023-02-20", hora:"14:00", motivo:"Revisión de avances"}),
    (r3: Reunion {fecha:"2023-03-10", hora:"09:00", motivo:"Presentación de resultados"}),
    (r4: Reunion {fecha:"2023-04-05", hora:"11:00", motivo:"Lluvia de ideas"}),
    (r5: Reunion {fecha:"2023-05-15", hora:"15:00", motivo:"Definición de tareas"}),
    (r6: Reunion {fecha:"2023-06-25", hora:"16:00", motivo:"Evaluación de riesgos"}),
    (r7: Reunion {fecha:"2023-07-30", hora:"13:00", motivo:"Cierre de proyecto"});
```
# RELACIONES

1. Relación EMPLEADO_DE:
    Esta relación conecta a los empleados con las sucursales en las que trabajan. Cada relación tiene un atributo tipo que especifica el rol o el puesto que el empleado ocupa en la sucursal.
```
    CREATE
        MATCH (e: Empleado {CURP:"CURP001"}), (s: Sucursal {clave:"S01"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Gerente general"];
        MATCH (e: Empleado {CURP:"CURP002"}), (s: Sucursal {clave:"S01"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Desarrollador full-stack"];
        MATCH (e: Empleado {CURP:"CURP003"}), (s: Sucursal {clave:"S01"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Desarrollador full-stack"];
        MATCH (e: Empleado {CURP:"CURP004"}), (s: Sucursal {clave:"S01"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Desarrollador full-stack"];
        MATCH (e: Empleado {CURP:"CURP005"}), (s: Sucursal {clave:"S01"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Desarrollador full-stack"];
        MATCH (e: Empleado {CURP:"CURP006"}), (s: Sucursal {clave:"S01"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Desarrollador full-stack"];
        MATCH (e: Empleado {CURP:"CURP007"}), (s: Sucursal {clave:"S01"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Desarrollador full-stack"];
        MATCH (e: Empleado {CURP:"CURP008"}), (s: Sucursal {clave:"S01"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Soporte de infraestructura"];
        MATCH (e: Empleado {CURP:"CURP009"}), (s: Sucursal {clave:"S01"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Soporte de software"];
        MATCH (e: Empleado {CURP:"CURP010"}), (s: Sucursal {clave:"S01"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Soporte de hardware"];

        MATCH (e: Empleado {CURP:"CURP011"}), (s: Sucursal {clave:"S02"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Gerente de finanzas"];
        MATCH (e: Empleado {CURP:"CURP012"}), (s: Sucursal {clave:"S02"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Desarrollador front-end"];
        MATCH (e: Empleado {CURP:"CURP013"}), (s: Sucursal {clave:"S02"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Desarrollador back-end"];
        MATCH (e: Empleado {CURP:"CURP014"}), (s: Sucursal {clave:"S02"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Gerente de ventas"];
        MATCH (e: Empleado {CURP:"CURP015"}), (s: Sucursal {clave:"S02"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Desarrollador full-stack"];
        MATCH (e: Empleado {CURP:"CURP016"}), (s: Sucursal {clave:"S02"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Soporte de software"];
        MATCH (e: Empleado {CURP:"CURP017"}), (s: Sucursal {clave:"S02"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Soporte de hardware"];

        MATCH (e: Empleado {CURP:"CURP018"}), (s: Sucursal {clave:"S03"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Gerente de operaciones"];
        MATCH (e: Empleado {CURP:"CURP019"}), (s: Sucursal {clave:"S03"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Desarrollador front-end"];
        MATCH (e: Empleado {CURP:"CURP020"}), (s: Sucursal {clave:"S03"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Desarrollador back-end"];
        MATCH (e: Empleado {CURP:"CURP021"}), (s: Sucursal {clave:"S03"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Soporte de software"];
        MATCH (e: Empleado {CURP:"CURP022"}), (s: Sucursal {clave:"S03"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Desarrollador full-stack"];

        MATCH (e: Empleado {CURP:"CURP023"}), (s: Sucursal {clave:"S04"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Gerente de operaciones"];
        MATCH (e: Empleado {CURP:"CURP024"}), (s: Sucursal {clave:"S04"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Desarrollador front-end"];
        MATCH (e: Empleado {CURP:"CURP025"}), (s: Sucursal {clave:"S04"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Desarrollador back-end"];
        MATCH (e: Empleado {CURP:"CURP026"}), (s: Sucursal {clave:"S04"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Desarrollador full-stack"];
        MATCH (e: Empleado {CURP:"CURP027"}), (s: Sucursal {clave:"S04"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Desarrollador full-stack"];
        MATCH (e: Empleado {CURP:"CURP028"}), (s: Sucursal {clave:"S04"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Soporte de software"];
        MATCH (e: Empleado {CURP:"CURP029"}), (s: Sucursal {clave:"S04"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Soporte de hardware"];
        MATCH (e: Empleado {CURP:"CURP030"}), (s: Sucursal {clave:"S04"}) 
        CREATE (e)-[r:EMPLEADO_DE]->(s) SET r.tipo=["Soporte de infraestructura"];
```
2. Relación ASISTE_A:
    Esta relación conecta a los clientes con las reuniones a las que han asistido. No se proporciona explícitamente en la consulta dada, pero generalmente se espera que esta relación tenga un registro de la asistencia de cada cliente a una reunión específica.

    CREATE
        MATCH (c1: Cliente {nombre:"Jorge Andrade"}), (r1: Reunion {fecha:"2023-01-15", hora:"10:00"})
        CREATE (c1)-[:ASISTE_A {sucursalClave: "P01"}]->(r1);

        MATCH (c2: Cliente {nombre:"Laura Mejía"}), (r2: Reunion {fecha:"2023-02-20", hora:"14:00"})
        CREATE (c2)-[:ASISTE_A {sucursalClave: "P01"}]->(r2);

        MATCH (c3: Cliente {nombre:"Carlos Ibáñez"}), (r3: Reunion {fecha:"2023-03-10", hora:"09:00"})
        CREATE (c3)-[:ASISTE_A {sucursalClave: "P01"}]->(r3);

        MATCH (c4: Cliente {nombre:"Ana Torres"}), (r4: Reunion {fecha:"2023-04-05", hora:"11:00"})
        CREATE (c4)-[:ASISTE_A {sucursalClave: "P01"}]->(r4);

        MATCH (c5: Cliente {nombre:"Luis Fernández"}), (r5: Reunion {fecha:"2023-05-15", hora:"15:00"})
        CREATE (c5)-[:ASISTE_A {sucursalClave: "P01"}]->(r5);

        MATCH (c6: Cliente {nombre:"Luis Herrera"}), (r6: Reunion {fecha:"2023-06-25", hora:"16:00"})
        CREATE (c6)-[:ASISTE_A {sucursalClave: "P01"}]->(r6);

        MATCH (c: Cliente {nombre:"Jorge Andrade"}), (r7: Reunion {fecha:"2023-07-30", hora:"13:00"})
        CREATE (c)-[:ASISTE_A {sucursalClave: "P02"}]->(r7);

3. Relación CONTRATA:
    Esta relación conecta a los clientes con los proyectos que han contratado. Se usa para registrar qué clientes contrataron un proyecto específico.

    CREATE 
        MATCH (p: Proyecto {codigo:"P01"}),(c: Cliente {nombre:"Jorge Andrade"})
        CREATE (c)-[:CONTRATA]->(p);

        MATCH (p: Proyecto {codigo:"P02"}),(c: Cliente {nombre:"Jorge Andrade"})
        CREATE (c)-[:CONTRATA]->(p);

        MATCH (p: Proyecto {codigo:"P03"}),(c: Cliente {nombre:"Jorge Andrade"})
        CREATE (c)-[:CONTRATA]->(p);

        MATCH (p: Proyecto {codigo:"P04"}),(c: Cliente {nombre:"Laura Mejía"})
        CREATE (c)-[:CONTRATA]->(p);

        MATCH (p: Proyecto {codigo:"P05"}),(c: Cliente {nombre:"Laura Mejía"})
        CREATE (c)-[:CONTRATA]->(p);

        MATCH (p: Proyecto {codigo:"P06"}),(c: Cliente {nombre:"Carlos Ibáñez"})
        CREATE (c)-[:CONTRATA]->(p);

        MATCH (p: Proyecto {codigo:"P07"}),(c: Cliente {nombre:"Carlos Ibáñez"})
        CREATE (c)-[:CONTRATA]->(p);

        MATCH (p: Proyecto {codigo:"P08"}),(c: Cliente {nombre:"Ana Torres"})
        CREATE (c)-[:CONTRATA]->(p);

4. Relación TRABAJA_EN:
    Esta relación vincula a los empleados con los proyectos en los que están trabajando o han trabajado. 

    CREATE
        MATCH (p: Proyecto {codigo:"P01"}), 
            (e1: Empleado {CURP:"CURP001"}),
            (e2:Empleado {CURP:"CURP002"}), 
            (e3: Empleado {CURP:"CURP003"}),
            (e4: Empleado {CURP:"CURP009"})
        CREATE (e1)-[:GESTIONA]->(p),
            (e2)-[:TRABAJA_EN]->(p),
            (e3)-[:TRABAJA_EN]->(p),
            (e4)-[:TRABAJA_EN]->(p);

        MATCH (p: Proyecto {codigo:"P02"}), 
            (e1: Empleado {CURP:"CURP001"}),
            (e2: Empleado {CURP:"CURP013"}), 
            (e3: Empleado {CURP:"CURP030"})
        CREATE (e1)-[:GESTIONA]->(p),
            (e2)-[:TRABAJA_EN]->(p),
            (e3)-[:TRABAJA_EN]->(p);

        MATCH (p: Proyecto {codigo:"P03"}), 
            (e1: Empleado {CURP:"CURP001"}),
            (e2: Empleado {CURP:"CURP013"}),
            (e3: Empleado {CURP:"CURP008"}),
            (e4: Empleado {CURP:"CURP017"}), 
            (e5: Empleado {CURP:"CURP004"})
        CREATE  (e1)-[:GESTIONA]->(p),
                (e2)-[:TRABAJA_EN]->(p),
                (e3)-[:TRABAJA_EN]->(p),
                (e4)-[:TRABAJA_EN]->(p),
                (e5)-[:TRABAJA_EN]->(p);

        MATCH (p: Proyecto {codigo:"P04"}), 
            (e1: Empleado {CURP:"CURP001"}),
            (e2: Empleado {CURP:"CURP020"}), 
            (e3: Empleado {CURP:"CURP008"})
        CREATE (e1)-[:GESTIONA]->(p),
            (e2)-[:TRABAJA_EN]->(p),
            (e3)-[:TRABAJA_EN]->(p);

        MATCH (p: Proyecto {codigo:"P05"}),
            (e1: Empleado {CURP:"CURP004"}), 
            (e2: Empleado {CURP:"CURP005"}),
            (e3: Empleado {CURP:"CURP006"}), 
            (e4: Empleado {CURP:"CURP010"})
        CREATE (e1)-[:GESTIONA]->(p),
            (e2)-[:TRABAJA_EN]->(p),
            (e3)-[:TRABAJA_EN]->(p),
            (e4)-[:TRABAJA_EN]->(p);

        MATCH (p: Proyecto {codigo:"P06"}),
            (e1: Empleado {CURP:"CURP011"}), 
            (e2: Empleado {CURP:"CURP012"}), 
            (e3: Empleado {CURP:"CURP015"}), 
            (e4: Empleado {CURP:"CURP016"})  
        CREATE (e1)-[:GESTIONA]->(p),
            (e2)-[:TRABAJA_EN]->(p),
            (e3)-[:TRABAJA_EN]->(p),
            (e4)-[:TRABAJA_EN]->(p);

        MATCH (p: Proyecto {codigo:"P07"}),
            (e1: Empleado {CURP:"CURP018"}), 
            (e2: Empleado {CURP:"CURP017"}), 
            (e3: Empleado {CURP:"CURP019"}), 
            (e4: Empleado {CURP:"CURP020"})  
        CREATE (e1)-[:GESTIONA]->(p),
            (e2)-[:TRABAJA_EN]->(p),
            (e3)-[:TRABAJA_EN]->(p),
            (e4)-[:TRABAJA_EN]->(p);

        MATCH (p: Proyecto {codigo:"P08"}),
            (e1: Empleado {CURP:"CURP023"}),
            (e2: Empleado {CURP:"CURP022"}), 
            (e3: Empleado {CURP:"CURP024"}) 
        CREATE (e1)-[:GESTIONA]->(p),
            (e2)-[:TRABAJA_EN]->(p),
            (e3)-[:TRABAJA_EN]->(p);

5. Relación PERTENECE_A
    Esta relación se establece entre un proyecto y una sucursal para determinar qué sucursal estará trabajando dicho proyecto.

    CREATE
        MATCH (p: Proyecto {codigo:"P08"}), (s: Sucursal {clave:"S04"})
        CREATE (p)-[:PERTENECE_A]->(s);

        MATCH (p: Proyecto {codigo:"P07"}), (s: Sucursal {clave:"S03"})
        CREATE (p)-[:PERTENECE_A]->(s);

        MATCH (p: Proyecto {codigo:"P06"}), (s: Sucursal {clave:"S02"})
        CREATE (p)-[:PERTENECE_A]->(s);

        MATCH (p: Proyecto {codigo:"P03"}), (s: Sucursal {clave:"S02"})
        CREATE (p)-[:PERTENECE_A]->(s);

        MATCH (p: Proyecto {codigo:"P02"}), (s: Sucursal {clave:"S03"})
        CREATE (p)-[:PERTENECE_A]->(s);

        MATCH (p: Proyecto {codigo:"P01"}), (s: Sucursal {clave:"S04"})
        CREATE (p)-[:PERTENECE_A]->(s);

        MATCH (p: Proyecto {codigo:"P04"}), (s: Sucursal {clave:"S01"})
        CREATE (p)-[:PERTENECE_A]->(s);

        MATCH (p: Proyecto {codigo:"P05"}), (s: Sucursal {clave:"S01"})
        CREATE (p)-[:PERTENECE_A]->(s);

# ----------------------------  QUERYS  -------------------------------

### Q01. Obtener la lista de sucursales que tienen más de 5 empleados
    MATCH (s:Sucursal)<-[:EMPLEADO_DE]-(e:Empleado)
    WITH s, COUNT(e) AS numEmpleados
    WHERE numEmpleados > 5
    RETURN s.clave, numEmpleados;

### Q02. Encontrar los gerentes que gestionan más de 3 proyectos simultáneamente.
    MATCH (e:Empleado)-[:GESTIONA]->(p:Proyecto)
    WITH e, COUNT(p) AS numProyectos
    WHERE numProyectos > 3
    RETURN e;

### Q03. Obtener la lista de desarrolladores con especialización en back-end que están trabajando en más de 2 proyectos.
    MATCH (e:Empleado)-[r:EMPLEADO_DE]->(s:Sucursal)
    WHERE "Desarrollador back-end" IN r.tipo
    MATCH (e)-[:TRABAJA_EN]->(p:Proyecto)
    WITH e, COUNT(p) AS numProyectos
    WHERE numProyectos > 1
    RETURN e.nombre;

### Q04. Obtener la lista de proyectos que tienen un presupuesto mayor a $1,000,000.
    MATCH (p:Proyecto)
    WHERE toInteger(p.presupuesto) > 1000000
    RETURN p.codigo, p.nombre, p.presupuesto;

### Q05. Listar los empleados de soporte técnico de todas las sucursales
    MATCH (e:Empleado)-[r:EMPLEADO_DE]->(s:Sucursal)
    WHERE "Soporte de software" IN r.tipo
    OR "Soporte de hardware" IN r.tipo
    OR "Soporte de infraestructura" IN r.tipo
    RETURN e.nombre, s.nombre;

### Q06. Encontrar los proyectos que corresponden a un cliente en específico.
    MATCH (c: Cliente )-[:CONTRATA]->(p: Proyecto)
    WHERE "Jorge Andrade" IN c.nombre
    RETURN c,p;

### Q07. Obtener la lista de sucursales que han recibido visitas de más de 5 clientes diferentes.
    MATCH (c:Cliente)-[rel:ASISTE_A]->(r:Reunion)
    WITH rel.sucursalClave AS sucursal, COUNT(DISTINCT c) AS numClientes
    WHERE numClientes > 5
    RETURN sucursal, numClientes;

### Q08. Encontrar a los desarrolladores que han trabajado en proyectos con un presupuesto total mayor a $500,000.
    MATCH (e:Empleado)-[:TRABAJA_EN]->(p:Proyecto)
    WITH e, SUM(toInteger(p.presupuesto)) AS totalPresupuesto
    WHERE totalPresupuesto > 500000
    RETURN e.CURP, e.nombre, totalPresupuesto;

### Q09. Obtener la lista de clientes que han contratado más de 3 proyectos en diferentes sucursales.
    MATCH (c:Cliente)-[:CONTRATA]->(p:Proyecto)
    WITH c, COUNT(DISTINCT p) AS proyectosContratados
    WHERE proyectosContratados > 2
    RETURN c.nombre, proyectosContratados;

### Q10. Encontrar las sucursales que tienen más de 5 desarrolladores especializados en full-stack.
    MATCH (s:Sucursal)<-[r:EMPLEADO_DE]-(e:Empleado)
    WHERE "Desarrollador full-stack" IN r.tipo
    WITH s, COUNT(e) AS numDesarrolladores
    WHERE numDesarrolladores > 5
    RETURN s;

### Q11. Transferir todos los empleados de soporte técnico de una sucursal en específico hacia otra sucursal.
    MATCH (e:Empleado)-[r:EMPLEADO_DE]->(sOrigen:Sucursal {clave: "S01"}) 
    WHERE r.tipo CONTAINS "Soporte de infraestructura" OR r.tipo CONTAINS "Soporte de software" OR r.tipo CONTAINS "Soporte de hardware"
    MATCH (sDestino:Sucursal {clave: "S02"})
    CREATE (e)-[:EMPLEADO_DE]->(sDestino)
    DELETE r
    RETURN e;

### Q12. Reemplaza al gerente de una sucursal en específico.
     1. Primero, eliminamos la relación existente del gerente actual con la sucursal
        MATCH (e:Empleado)-[r:EMPLEADO_DE]->(s:Sucursal {clave: "S01"})
        WHERE "Gerente general" IN r.tipo
        DELETE r;

    2. Luego, creamos una nueva relación con el nuevo gerente
        MATCH (nuevoGerente:Empleado {CURP: "CURP002"}), (s:Sucursal {clave: "S01"})
        CREATE (nuevoGerente)-[r:EMPLEADO_DE]->(s)
        SET r.tipo = ["Gerente general"];

### Q13. Cambie un proyecto en específico a otra sucursal, incluyendo la totalidad de participantes en el proyecto .
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
    );

### Q14. Obtener la lista de clientes que nunca han realizado visitas a las sucursales.
    `MATCH (c:Cliente)
    WHERE NOT EXISTS((c)-[:ASISTE_A]->(: Reunion))
    RETURN c;`

### Q15. Todos los empleados de una sucursal determinada son transferidos a otra sucursal por cierre de sucursal de origen.
    MATCH (sActual:Sucursal {clave: "S03"})  
    MATCH (sDestino:Sucursal {clave: "S04"})  
    MATCH (e:Empleado)-[:EMPLEADO_DE]->(sActual)
    CREATE (e)-[:EMPLEADO_DE]->(sDestino);
    MATCH (e)-[r:EMPLEADO_DE]->(sActual)
    DELETE r;

# ---------------------  ESTRUCTURA DE LA API  ---------------------

Configurar la conexión a Neo4j en modelo/modeloClientes.js, modelo/modeloEmpleados.js, etc., con la URL y credenciales correctas:

    const neo4j = require("neo4j-driver");
    let driver = neo4j.driver(
        'neo4j://neo4j_Ges:7687',
        neo4j.auth.basic('neo4j', 'neo4j')
    );

Y la conexión hacia redis se configura como:

    const redis = require('redis');
    const client = redis.createClient({
        socket:{
            port:6379,
            //host:'127.0.0.1'
            host:'redis_stack'
        }
    });

La estructura general del proyecto es:
```
  src/
    ├── controlador/
    │   ├── controladorClientes.js
    │   ├── controladorEmpleados.js
    │   └── ...
    ├── modelo/
    │   ├── modeloClientes.js
    │   ├── modeloEmpleados.js
    │   └── ...
    ├── rutas/
    │   ├── logger.js
    │   ├── rutasClientes.js
    │   ├── rutasEmpleados.js
    │   └── ...
    └── server.js
```

## CÓDIGO

##### La API corre en http://localhost:3000. Através del archivo server.js:
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

## Modelos

### modeloClientes.js:

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

### modeloEmpleados.js:

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

## modeloProyectos.js:

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

### modeloSucursales.js:

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

## Controladores

### cotroladorClientes.js:

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

### controladorEmpleados.js:
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

### controladorProyectos.js:

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

### controladorSucursales.js:

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

## Rutas 

### rutasClientes.js
```
    const express = require('express');
    var router = express.Router();
    const controladorClientes = require('../controlador/controladorClientes')

    //Q16. Reemplazar un cliente por otro junto con todas sus relaciones
    router.route('/q16').delete(controladorClientes.reemplazarCliente);

    //Q17. Eliminar a todos los clientes que no tengan un proyecto asignado
    router.route('/q17').delete(controladorClientes.eliminarCliente);

    module.exports = router;
```

### rutasEmpleados.js
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

### rutasProyectos
    const express = require('express');
    var router = express.Router();
    const controladorProyecto = require('../controlador/controladorProyecto');


    //Q06. Encontrar los proyectos que corresponden a un cliente en específico.
    router.route('/q06').get(controladorProyecto.getProyectoCliente);

    //Q13. Cambie un proyecto en específico a otra sucursal, incluyendo la totalidad de participantes en el proyecto .
    router.route('/q13').delete(controladorProyecto.transferirProyecto);

    module.exports = router;

### rutasSucursales
    const express = require('express');
    var router = express.Router();
    const controladorSucursal = require('../controlador/controladorSucursales');

    //Q01. Obtener la lista de sucursales que tienen más de 5 empleados
    router.route('/q01').get(controladorSucursal.getSucursales);

    //Q07. Obtener la lista de sucursales que han recibido visitas de más de 5 clientes diferentes.
    router.route('/q07').get(controladorSucursal.getSucursalesVisitas);

    module.exports = router;

### Logger con Redis
#### El middleware logger.js en la carpeta rutas/ registra todas las solicitudes HTTP en Redis, almacenando el método, la URL y una marca de tiempo.
```
    module.exports = (req, res, next) => {
        res.on('finish', async () => {

            const key = req.method +":"+ Date.now()+ ":"+ req.originalUrl;
            const valor = JSON.stringify({
                clave: key,
                time: new Date(),
                req: {
                    method: req.method,
                    url: req.originalUrl,
                    headers: req.headers,
                    body: req.body
                },
                res: {
                    statusCode: res.statusCode,
                    statusMessage: res.statusMessage,
                    response: req.method === 'GET' ? res.data : null
                }
            });
            await client.connect();
            await client.set(key, valor);
            await client.disconnect();
        });
        next();
    };
```

# -------------------------  Docker-Compose  -------------------------
```
services:

  neo4j:
    image: neo4j
    container_name: neo4j_Ges
    ports:
      - "7474:7474"
      - "7687:7687"
    environment:
      - NEO4J_AUTH=none
    networks:
      - backend

  redis_stack:
    image: redis/redis-stack
    container_name: redis_stack
    ports:
      - "6379:6379"
      - "8001:8001"
    depends_on:
      - neo4j
    networks:
      - backend

  app:
    build: .
    container_name: proyectote-app
    ports:
      - "3000:3000"
    depends_on:
      - neo4j
      - redis_stack
    environment:
      - NEO4J_URL=neo4j://neo4j_Ges:7687
    volumes:
      - ./NODE-RUTAS2:/app
    networks:
      - backend
    command: npm start

networks:
  backend:
    driver: bridge
```
