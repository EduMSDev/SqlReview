/*Example queries from video 5 Total Grouping Queries*/
/*o perform this type of query you always need two fields, the calculation field and the grouping field.*/
SELECT SECCION, sum(PRECIO) AS SUMA_TOTAL FROM productos GROUP BY SECCION ORDER BY SUMA_TOTAL 

/*The "HAVING" replaces the "WHERE" in the grouping or totals query, that is, it is used after filtering the results, the where before.*/
SELECT SECCION, avg(PRECIO) AS AVG_ARTICULOS FROM productos GROUP BY SECCION HAVING SECCION='DEPORTES' OR SECCION='CONFECCION' ORDER BY AVG_ARTICULOS; 

SELECT POBLACION, count(CODIGOCLIENTE) AS N_CLIENTE FROM clientes GROUP BY POBLACION; 

SELECT SECCION, MAX(PRECIO) AS PRECIO_MAX FROM productos WHERE SECCION='CONFECCION' GROUP BY SECCION;

/*Exercices*/
/*Perform a query on the "Clientes" table showing the "Direccion", "Telefono" and "Poblacion" fields. 
 The latter should appear in the query under the name "Residencia". The records will be sorted in descending order by the "Poblacion" field. */
SELECT DIRECCION, TELEFONO , POBLACION AS RESIDENCIA FROM clientes ORDER BY RESIDENCIA DESC;

/*Perform a query that shows which towns are in the "Clientes" table.*/
SELECT  POBLACION, count(POBLACION) AS POBLACION_TOTAL FROM clientes GROUP BY POBLACION; 

/*Perform a grouping query that shows the average price of the items in all the sections. Show in the query the fields section and sum by section.*/
SELECT SECCION, sum(PRECIO) AS MEDIA_POR_SECCION FROM productos GROUP BY SECCION;

/*Perform a grouping query that shows the average of the price of all sections except toy store. The fields "Seccion" and "Average per section" should appear in the query.*/
SELECT SECCION, avg(PRECIO) AS PRECIO_MEDIO FROM productos GROUP BY SECCION HAVING SECCION <> 'JUGUETERIA';

/*Perform a query that shows how many items there are in the "Deportes" section.*/
SELECT count(SECCION) FROM productos WHERE SECCION= 'DEPORTES';
