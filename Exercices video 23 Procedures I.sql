-- Exercices video 23 Procedures I
-- The functionality of this statement is to create stored procedures for subsequent execution as many times as needed.
-- In addition, we increase the security of our MySQL database by granting permissions only for the execution of the necessary procedures.

-- This procedure is responsible for selecting those customers who are from Madrid.
CREATE PROCEDURE muestra_cliente() SELECT * FROM clientes WHERE POBLACION ='MADRID';

-- The above procedure is launched
CALL muestra_cliente();

-- This procedure updates the products on the basis of the following parameters
CREATE PROCEDURE actualiza_productos(n_precio int, codigo varchar(4)) UPDATE productos SET precio =  n_precio WHERE CODIGOARTICULO = codigo;

-- The above procedure is launched
CALL actualiza_productos(425,'AR22'); 