-- Exercices video 22 Triggers III
-- A table is created with which to work. 
CREATE TABLE prod_eliminados (c_art varchar(5), nombre varchar(25), seccion varchar (15), precio integer, pais_origen varchar(15));

-- A trigger is created to store all the information of the products deleted from the "productos" table.
CREATE TRIGGER elimpro_AD AFTER DELETE ON productos FOR EACH ROW 
INSERT INTO prod_eliminados (c_art, nombre, seccion, precio, pais_origen)
VALUES (OLD.codigoarticulo, OLD.nombrearticulo,OLD.seccion, OLD.precio,OLD.paisdeorigen);

-- A product is deleted to corroborate that the trigger is working correctly. 
DELETE FROM productos WHERE CODIGOARTICULO = 'AR41';

-- Modification date and user fields are included.
ALTER TABLE prod_eliminados ADD COLUMN (usuario varchar (15), fecha_modif date);

-- Deleting a trigger
DROP TRIGGER IF EXISTS elimpro_AD;

-- The trigger is created again with the new fields
CREATE TRIGGER elimpro_AD AFTER DELETE ON productos FOR EACH ROW 
INSERT INTO prod_eliminados (c_art, nombre, seccion, precio, pais_origen,usuario,fecha_modif)
VALUES (OLD.codigoarticulo, OLD.nombrearticulo,OLD.seccion, OLD.precio,OLD.paisdeorigen,current_user(),now());

-- A deletion is re-launched to check that the new data is included with the trigger.
DELETE FROM productos WHERE CODIGOARTICULO = 'AR39';