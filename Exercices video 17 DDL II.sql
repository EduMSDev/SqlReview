-- Exercices video 17 DDL II
-- ALTER: allows you to modify tables that have already been created
ALTER TABLE prueba ADD COLUMN poblacion varchar(20);
-- change type 
ALTER TABLE prueba ALTER COLUMN poblacion varchar(50);
-- Remove Field 
ALTER TABLE prueba DROP COLUMN poblacion;
-- SET DEFAULT: Allows to set default values
ALTER TABLE prueba ADD lugar_nacimiento varchar(20);
ALTER TABLE prueba ALTER COLUMN lugar_nacimiento SET DEFAULT 'DESCONOCIDO';
ALTER TABLE prueba ALTER COLUMN lugar_nacimiento DROP DEFAULT;

