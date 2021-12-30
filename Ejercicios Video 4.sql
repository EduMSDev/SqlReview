/*Consultas de ejemplo del video 4*/
/*ORDER BY permite la ordenacion de campos  segun los parametros que queramos*/
SELECT * FROM productos WHERE SECCION ='DEPORTES' OR SECCION= 'CERAMICA' ORDER BY PRECIO DESC;
SELECT * FROM productos WHERE SECCION ='DEPORTES' OR SECCION= 'CERAMICA' ORDER BY SECCION ASC;

/*Esto es lo mismo que arriba pero en una sola linea*/
SELECT * FROM productos WHERE SECCION ='DEPORTES' OR SECCION= 'CERAMICA' ORDER BY SECCION ASC, PRECIO DESC; 

/*Y se pueden crear las consultas que queramos como en el siguiente ejemplo*/
SELECT * FROM productos WHERE SECCION ='DEPORTES' OR SECCION= 'CERAMICA' ORDER BY SECCION, PRECIO, PAISDEORIGEN;


/*Realizar una consulta que muestre aquellos productos españoles cuya fecha esté comprendida entre febrero y mayo del 2020. Ordenar los resultados por el campo
“Nombre artículo” descendentemente.*/
SELECT * FROM productos  WHERE PAISDEORIGEN='ESPAÑA' AND FECHA BETWEEN '2020-02-01' AND '2020-05-31' ORDER BY NOMBREARTICULO DESC; 

/*Realizar una consulta que muestre los campos “Empresa”, “Dirección” y “Población” de la tabla “Clientes”. Ordenar la consulta por el campo “Población”
ascendentemente y por “Dirección” descendentemente.*/
SELECT EMPRESA, DIRECCION, POBLACION FROM clientes ORDER BY POBLACION ASC, DIRECCION DESC;

/*Realizar una consulta que muestre todos los campos de la tabla “Clientes”. Ordenar los resultados por el campo “Población” ascendentemente.*/
SELECT * FROM clientes ORDER BY POBLACION ASC;