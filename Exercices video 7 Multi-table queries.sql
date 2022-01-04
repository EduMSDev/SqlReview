-- Exercices video 7 Multi-table queries: allows you to query several tables in a single query

-- Union: The tables to be queried must have the same number of fields and must be of the same type.
SELECT * FROM productos  WHERE SECCION ='DEPORTES' UNION  SELECT * FROM productosnuevos WHERE SECCION LIKE 'Deportes%';
SELECT * FROM productos  WHERE PRECIO >=500  UNION  SELECT * FROM productosnuevos WHERE SECCION = 'Alta Costura';

-- UNION ALL: It has the same functionality as UNION but in case the field is repeated it shows it as many times as it is repeated.
-- UNION if it is repeated only shows it once.
SELECT * FROM productos WHERE SECCION = 'DEPORTES' UNION ALL SELECT * FROM productosnuevos;