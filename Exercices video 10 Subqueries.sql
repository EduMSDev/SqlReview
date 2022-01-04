-- Exercices video 10 Subqueries
-- Staggered subquery: the child query only returns a single record and this record is used as search criteria in the parent query

-- In this query we will return those products whose price is higher than the average price.
SELECT NOMBREARTICULO, SECCION,PRECIO FROM productos WHERE PRECIO > (SELECT avg(PRECIO) FROM productos);

-- In this query we will return those products whose price is lower than the average price.
SELECT NOMBREARTICULO, SECCION,PRECIO FROM productos WHERE PRECIO < (SELECT avg(PRECIO) FROM productos);

-- List subquery:the child query only returns a list of records and these records are used as search criteria in the parent query 
-- This query returns all products that have a higher price than the ceramic product with the highest value.
SELECT * FROM productos WHERE PRECIO > ALL (SELECT precio FROM productos WHERE SECCION ='CERAMICA'); 

-- This query returns all those products that have a higher price than any of the ceramic products.
SELECT * FROM productos WHERE PRECIO > ANY (SELECT precio FROM productos WHERE SECCION ='CERAMICA');

-- This query returns all products that have a higher price than the toys product with the highest value.
SELECT * FROM productos WHERE PRECIO > ALL (SELECT PRECIO FROM productos WHERE SECCION = 'JUGUETERIA');

-- This query returns all those products that have a higher price than any of the toys products.
SELECT * FROM productos WHERE PRECIO > ANY (SELECT PRECIO FROM productos WHERE SECCION = 'JUGUETERIA'); 