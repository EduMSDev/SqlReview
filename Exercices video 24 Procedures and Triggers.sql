-- Exercices video 24 Procedures and Triggers
-- this query is in charge of calculating the age based on the year passed as a parameter.
DELIMITER $$
CREATE PROCEDURE calcula_edad(nacimiento int)
	BEGIN 
		DECLARE anyo_actual int DEFAULT 2022;
		DECLARE edad int;
		SET edad = anyo_actual-nacimiento;
		SELECT edad;
	END;$$
	
DELIMITER ;

DELIMITER $$
CREATE TRIGGER REVISA_PRECIO_BU BEFORE UPDATE ON productos FOR EACH ROW 
	BEGIN
		IF (NEW.precio<0) THEN 
			SET  NEW.precio=OLD.precio;
		ELSEIF(NEW.precio>1000) THEN
			SET NEW.precio=OLD.precio;
		END IF;
	END;$$
DELIMITER ;
