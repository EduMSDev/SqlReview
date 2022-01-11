-- Exercices video 21 Triggers II
-- A table is created to store the new records from the trigger.
CREATE TABLE productos_actualizados (anterior_codigo varchar(4), anterior_nombre varchar(25), anterior_seccion varchar(15),
									anterior_precio int(4), anterior_importado varchar(15),anterior_pais varchar(15),
									anterior_fecha date,nuevo_codigo varchar(4), nuevo_nombre varchar(25), nuevo_seccion varchar(15),
									nuevo_precio int(4), nuevo_importado varchar(15),nuevo_pais varchar(15),
									nueva_fecha date, usuario varchar(15), fecha_modificacion date);

-- This trigger is responsible for saving the pre-update and post-update fields in the previously created table.								
CREATE TRIGGER actualizaproductos_BU BEFORE UPDATE ON productos FOR EACH ROW INSERT INTO productos_actualizados 
(anterior_codigo,anterior_nombre,anterior_seccion,anterior_precio,anterior_importado,anterior_pais,anterior_fecha,
nuevo_codigo,nuevo_nombre,nuevo_seccion,nuevo_precio,nuevo_importado,nuevo_pais,nueva_fecha, usuario,fecha_modificacion)
VALUES (OLD.codigoarticulo,OLD.nombrearticulo,OLD.seccion,OLD.precio,OLD.importado,OLD.paisdeorigen,OLD.fecha,
NEW.codigoarticulo, NEW.nombrearticulo, NEW.seccion, NEW.precio,NEW.importado,NEW.paisdeorigen,NEW.fecha, 
CURRENT_USER(), now());

-- We update the table to check that the trigger works.
UPDATE productos SET precio= precio +20 WHERE CODIGOARTICULO ='AR07';