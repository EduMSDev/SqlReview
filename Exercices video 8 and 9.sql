/*Exercices video 8 and 9 Outers joins*/
/*INNER JOIN:This query searches for matches between 2 tables, based on a column they have in common. 
 So that only the intersection will be shown in the results.*/
SELECT * FROM clientesnuevos c INNER JOIN pedidos p ON c.CODIGOCLIENTE =p.CODIGOCLIENTE WHERE POBLACION = 'MADRID';
SELECT c.CODIGOCLIENTE, POBLACION, DIRECCION, p.NUMEROPEDIDO, p.CODIGOCLIENTE FROM clientesnuevos c 
INNER JOIN pedidos p ON c.CODIGOCLIENTE =p.CODIGOCLIENTE WHERE POBLACION = 'MADRID';

/*LEFT JOIN: This query gives priority to the left table, and searches the right table.
If there is no match for any of the rows in the left table, all results from the first table are displayed anyway.*/
SELECT * FROM clientesnuevos c LEFT JOIN pedidos p ON c.CODIGOCLIENTE =p.CODIGOCLIENTE WHERE POBLACION = 'MADRID';
SELECT c.CODIGOCLIENTE, POBLACION, DIRECCION, p.NUMEROPEDIDO, p.CODIGOCLIENTE FROM clientesnuevos c 
LEFT JOIN pedidos p ON c.CODIGOCLIENTE =p.CODIGOCLIENTE WHERE POBLACION = 'MADRID';
SELECT c.CODIGOCLIENTE, POBLACION, DIRECCION, p.NUMEROPEDIDO, p.CODIGOCLIENTE FROM clientesnuevos c 
LEFT JOIN pedidos p ON c.CODIGOCLIENTE =p.CODIGOCLIENTE WHERE POBLACION = 'MADRID' AND p.CODIGOCLIENTE IS NULL;


/*RIGHT JOIN: This query gives priority to the table on the right. So if we use the following query,
  we will be showing all the rows of the table on the right:*/
SELECT * FROM clientesnuevos c RIGHT JOIN pedidos p ON c.CODIGOCLIENTE =p.CODIGOCLIENTE WHERE POBLACION = 'MADRID';