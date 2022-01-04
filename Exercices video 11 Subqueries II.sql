-- Exercices video 11 Subqueries II

-- The IN operator allows you to determine if a value matches any value in a list of values
-- This query obtains products with orders over 20
SELECT NOMBREARTICULO, PRECIO FROM productos WHERE CODIGOARTICULO IN (SELECT CODIGOARTICULO FROM productospedidos WHERE UNIDADES>20);

-- This query gets the same result as the previous query but it has been done with an inner join. 
-- It is longer and needs to create a relation 
SELECT NOMBREARTICULO, PRECIO FROM productos p INNER JOIN productospedidos pp ON p.CODIGOARTICULO = pp.CODIGOARTICULO 
WHERE pp.UNIDADES >20;

-- NOT IN: makes sure that the expression proceeded does not have any of the values present in the arguments.
SELECT empresa, poblacion FROM clientes  WHERE CODIGOCLIENTE NOT IN (SELECT CODIGOCLIENTE FROM pedidos WHERE formapago = 'tarjeta');
