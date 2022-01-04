-- Example Queries from Video 4 ORDER BY allows the ordering of fields according to the parameters we want
SELECT * FROM productos WHERE SECCION ='DEPORTES' OR SECCION= 'CERAMICA' ORDER BY PRECIO DESC;
SELECT * FROM productos WHERE SECCION ='DEPORTES' OR SECCION= 'CERAMICA' ORDER BY SECCION ASC;

-- This is the same as above but on one line only
SELECT * FROM productos WHERE SECCION ='DEPORTES' OR SECCION= 'CERAMICA' ORDER BY SECCION ASC, PRECIO DESC; 

-- And you can create as many queries as you like as in the following example
SELECT * FROM productos WHERE SECCION ='DEPORTES' OR SECCION= 'CERAMICA' ORDER BY SECCION, PRECIO, PAISDEORIGEN;


-- Perform a query showing those Spanish products whose date is between February and May 2020. Sort the results by the field
-- "Nombre del articulo" in descending order.
SELECT * FROM productos  WHERE PAISDEORIGEN='ESPAÑA' AND FECHA BETWEEN '2020-02-01' AND '2020-05-31' ORDER BY NOMBREARTICULO DESC; 

-- Perform a query that displays the "Compañia", "Direccion" and "Ciudad" fields of the "Clientes" table. Sort the query by the "Ciudad" field
-- in ascending order and by "Direccion" in descending order
SELECT EMPRESA, DIRECCION, POBLACION FROM clientes ORDER BY POBLACION, DIRECCION DESC;

-- Perform a query showing all the fields of the "Clientes" table. Sort the results by the "Poblacion" field in ascending order.
SELECT * FROM clientes ORDER BY POBLACION;

-- By default mysql sorts in ascending order, so in the order by order it would not be necessary to apply the order by ASC when you want to sort in this way.