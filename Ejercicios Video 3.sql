/*consultas sencillas del WHERE*/
SELECT NOMBREARTICULO, SECCION ,PRECIO FROM productos WHERE SECCION = 'CERAMICA'  

SELECT NOMBREARTICULO, SECCION ,PRECIO FROM productos WHERE SECCION = 'CERAMICA' OR SECCION = 'DEPORTES'

SELECT * FROM productos WHERE SECCION='DEPORTES' AND PAISDEORIGEN ='USA'



/*Ejercicios para practicar
Realizar una consulta que muestre los campos “Empresa” y “Población” de la tabla “Clientes”.*/
SELECT EMPRESA , POBLACION FROM clientes 

/*Realizar una consulta que muestre los productos de la sección “Deportes” cuyo precio esté entre 100 y 200 €. En la consulta solo se mostrarán los campos
“Nombre de artículo” y “Precio”.*/
SELECT NOMBREARTICULO ,PRECIO FROM productos WHERE SECCION ='DEPORTES' AND PRECIO BETWEEN 100 AND 200

/* Realizar una consulta que muestre los productos cuyo país no sea España.*/
SELECT * FROM productos WHERE PAISDEORIGEN <>'ESPAÑA' 

/*Realizar una consulta que muestre los artículos españoles de la sección “Deportes” o aquellos cuyo precio sea superior a 350 € independientemente de cual sea su
sección o país de origen.*/
SELECT * FROM productos WHERE (SECCION ='DEPORTES' AND PAISDEORIGEN ='ESPAÑA')  OR PRECIO>350

/*Realizar una consulta que muestre los productos cuya fecha esté entre 1/05/2001 y 15/12/2001. En la consulta solo se visualizarán los campos “Nombre de
artículo”, “Sección” y “Fecha”.*/
SELECT NOMBREARTICULO,SECCION, FECHA FROM productos WHERE FECHA BETWEEN '2001-01-05' AND '2001-12-15'
