-- Exercices Video 13 Action queries II
-- DELETE
DELETE FROM clientes WHERE POBLACION = 'MADRID';
DELETE FROM productos WHERE SECCION ='DEPORTES' AND PRECIO BETWEEN 50 AND 100;

-- Predicate queries
-- DISTINCT:  used to return only distinct (different) values.
SELECT DISTINCT EMPRESA FROM clientes c INNER JOIN pedidos p ON c.CODIGOCLIENTE = p.CODIGOCLIENTE;

-- DISTINCTROW: Omits data based on complete duplicate records, not just duplicate fields.
SELECT DISTINCTROW * FROM clientes c INNER JOIN pedidos p ON c.CODIGOCLIENTE = p.CODIGOCLIENTE;

-- Remove customers who have not placed an order.
DELETE DISTINCTROW c.*, p.codigocliente FROM clientes c LEFT JOIN pedidos p ON c.CODIGOCLIENTE = p.CODIGOCLIENTE 
WHERE p.CODIGOCLIENTE IS NULL;