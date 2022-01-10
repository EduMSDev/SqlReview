-- Exercices Video 14 Atacched Data Allows data from one table to be included in another 
CREATE TABLE cientes_madrid SELECT * FROM clientes WHERE POBLACION ='Madrid';
DELETE FROM clientes WHERE POBLACION ='MADRID';
-- Enter the data from the table "clientes_madrid" in "clientes". 
-- It is mandatory to execute the previous query for this query to work correctly.
INSERT INTO clientes SELECT * FROM cientes_madrid;
INSERT INTO clientes (CODIGOCLIENTE, EMPRESA, POBLACION, TELEFONO) SELECT CODIGOCLIENTE, EMPRESA, POBLACION, TELEFONO FROM cientes_madrid;