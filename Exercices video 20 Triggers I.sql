-- Exercices video 20 Triggers I
-- Is a database object that is associated with a table. It will be triggered when a defined action is executed on the table. 
-- The trigger can be used to execute one of the following MySQL statements on the table: INSERT, UPDATE and DELETE. 
-- It can be invoked before or after the event.
CREATE TABLE reg_productos (codigo_articulos varchar(25), nombre_articulo varchar(25), precio int(4), insertado datetime);

-- This triger includes the new products from the "Productos" table to the "reg_productos" table with the corresponding data
CREATE TRIGGER productos_AI AFTER INSERT ON productos FOR EACH ROW 
INSERT INTO reg_productos (codigo_articulos, nombre_articulo, precio, insertado) 
VALUES (NEW.codigoarticulo, NEW.nombrearticulo,NEW.precio, now());