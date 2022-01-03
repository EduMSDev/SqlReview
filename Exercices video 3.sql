/*Simple WHERE queries*/
SELECT NOMBREARTICULO, SECCION ,PRECIO FROM productos WHERE SECCION = 'CERAMICA'  

SELECT NOMBREARTICULO, SECCION ,PRECIO FROM productos WHERE SECCION = 'CERAMICA' OR SECCION = 'DEPORTES'

SELECT * FROM productos WHERE SECCION='DEPORTES' AND PAISDEORIGEN ='USA'

/*Exercises
Make a query that shows the fields “Empresa” and “Población” of the table “Clientes”.*/
SELECT EMPRESA , POBLACION FROM clientes 

/* Make a query that shows the products in the "Deportes" section whose price is between 100€ and 200€ . 
Only the fields will be displayed in the query "Nombre del articulo" and "Precio"*/
SELECT NOMBREARTICULO ,PRECIO FROM productos WHERE SECCION ='DEPORTES' AND PRECIO BETWEEN 100 AND 200

/*Make a query that shows the products whose country is not "España"*/
SELECT * FROM productos WHERE PAISDEORIGEN <>'ESPAÑA' 	

/*Make a query that shows the Spanish articles in the "Deportes" section or those whose price is higher than € 350 regardless of their
section or country of origin.*/
SELECT * FROM productos WHERE (SECCION ='DEPORTES' AND PAISDEORIGEN ='ESPAÑA')  OR PRECIO>350

/*Make a query that shows the products whose date is between 05/01/2001 and 12/15/2001. In the query, only the fields "Nombre del articulo",
"Seccion" and "Fecha".*/
SELECT NOMBREARTICULO,SECCION, FECHA FROM productos WHERE FECHA BETWEEN '2001-01-05' AND '2001-12-15'
