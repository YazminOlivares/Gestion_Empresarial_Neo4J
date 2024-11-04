CREATE 
    (s1: Sucursal {clave:"S01", nombre:"Sucursal Central", direccion:"Av. Principal 123", ciudad:"Ciudad A", capacidad:10}),
    (s2: Sucursal {clave:"S02", nombre:"Sucursal Norte", direccion:"Calle Norte 456", ciudad:"Ciudad B", capacidad:6}),
    (s3: Sucursal {clave:"S03", nombre:"Sucursal Sur", direccion:"Av. Sur 789", ciudad:"Ciudad C", capacidad:5}),
    (s4: Sucursal {clave:"S04", nombre:"Sucursal Este", direccion:"Calle Este 101", ciudad:"Ciudad D", capacidad:8}),

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
    (e30: Empleado {CURP:"CURP030", nombre:"Francisco Villanueva", telefono:"555-2828", cuenta:"2899001122", contratacion:"2020-05-22"}),

    (p1: Proyecto {codigo:"P01", nombre:"Proyecto Alfa", descripcion:"Desarrollo de software", fInicio:"2022-01-15", fFin:"2023-01-15", presupuesto:"150000"}),
    (p2: Proyecto {codigo:"P02", nombre:"Proyecto Beta", descripcion:"Implementación de red", fInicio:"2021-05-23", fFin:"2022-03-15", presupuesto:"30000"}),
    (p3: Proyecto {codigo:"P03", nombre:"Proyecto Gamma", descripcion:"Mantenimiento de infraestructura", fInicio:"2023-03-10", fFin:"2023-08-10", presupuesto:"2000000"}),
    (p4: Proyecto {codigo:"P04", nombre:"Proyecto Delta", descripcion:"Seguridad y ciberseguridad", fInicio:"2020-11-02", fFin:"2021-11-02", presupuesto:"2000000"}),
    (p5: Proyecto {codigo:"P05", nombre:"Proyecto Épsilon", descripcion:"Consultoría empresarial", fInicio:"2019-09-18", fFin:"2020-06-18", presupuesto:"35000"}),
    (p6: Proyecto {codigo:"P06", nombre:"Proyecto Zeta", descripcion:"Capacitación interna", fInicio:"2021-12-22", fFin:"2022-09-22", presupuesto:"25000"}),
    (p7: Proyecto {codigo:"P07", nombre:"Proyecto Eta", descripcion:"Optimización de procesos", fInicio:"2022-08-05", fFin:"2023-06-05", presupuesto:"145000"}),
    (p8: Proyecto {codigo:"P08", nombre:"Proyecto Theta", descripcion:"Análisis de datos", fInicio:"2021-04-12", fFin:"2022-02-12", presupuesto:"130000"}),

    (c1: Cliente {nombre:"Jorge Andrade", telefono:"555-1234", empresa:"TechCorp", correo:"jorge@techcorp.com"}),
    (c2: Cliente {nombre:"Laura Mejía", telefono:"555-5678", empresa:"Innova Solutions", correo:"laura@innovasolutions.com"}),
    (c3: Cliente {nombre:"Carlos Ibáñez", telefono:"555-1111", empresa:"Data Analytics", correo:"carlos@dataanalytics.com"}),
    (c4: Cliente {nombre:"Ana Torres", telefono:"555-2222", empresa:"Market Group", correo:"ana@marketgroup.com"}),
    (c5: Cliente {nombre:"Luis Fernández", telefono:"555-3333", empresa:"Tech Solutions", correo:"luis@techsolutions.com"}),
    (c6: Cliente {nombre:"Luis Herrera", telefono:"555-4444", empresa:"Tech Solutions", correo:"luis@techsolutions.com"}),
    (c7: Cliente {nombre:"Sara Gómez", telefono:"555-5555", empresa:"Creative Minds", correo:"sara@creativeminds.com"}),

    (r1: Reunion {fecha:"2023-01-15", hora:"10:00", motivo:"Planificación de proyecto"}),
    (r2: Reunion {fecha:"2023-02-20", hora:"14:00", motivo:"Revisión de avances"}),
    (r3: Reunion {fecha:"2023-03-10", hora:"09:00", motivo:"Presentación de resultados"}),
    (r4: Reunion {fecha:"2023-04-05", hora:"11:00", motivo:"Lluvia de ideas"}),
    (r5: Reunion {fecha:"2023-05-15", hora:"15:00", motivo:"Definición de tareas"}),
    (r6: Reunion {fecha:"2023-06-25", hora:"16:00", motivo:"Evaluación de riesgos"}),
    (r7: Reunion {fecha:"2023-07-30", hora:"13:00", motivo:"Cierre de proyecto"});


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
