-- Exercices video 12 Action queries I
-- UPDATE 
UPDATE productos SET precio = (precio + 10) WHERE SECCION ='DEPORTES';
UPDATE productos SET precio = (precio - 10) WHERE SECCION ='DEPORTES';
UPDATE productos SET seccion = 'DEPORTIVOS' WHERE seccion = 'DEPORTES';
UPDATE productos SET seccion = 'DEPORTES' WHERE seccion = 'DEPORTIVOS';

-- CREATE TABLE: Allows you to create a table. In this case, the table is created from an existing table.
CREATE TABLE CLIENTES_MADRID  SELECT * FROM clientes WHERE POBLACION ='MADRID';

-- Exercices
-- Perform a table creation action query from the table "PRODUCTOS", using all the fields of the table,
-- but only the records that are from the "DEPORTES" section. We name the new object - table with the text "ARTICULOS_DEPORTES".
CREATE TABLE ARTICULOS_DEPORTES SELECT * FROM productos WHERE SECCION ='DEPORTES';

-- Perform a table creation action query from the "PEDIDOS" table, using all the fields of the table, 
-- but only the records that have the "TARJETA" payment method registered. We name the new object - table with the text "PAGO_TARJETA".
CREATE TABLE PAGO_TARJETA SELECT * FROM pedidos WHERE FORMAPAGO ='TARJETA';

-- Perform a query to update the prices of the "DEPORTES" items table. 
-- The update consists of calculating the VAT (21%) and displaying the price including VAT in that field as a result. 
UPDATE productos SET precio = (precio * 1.21) WHERE SECCION ='DEPORTES';
