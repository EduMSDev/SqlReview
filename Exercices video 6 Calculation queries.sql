-- Exercices Video 6 Calculation queries
-- Calculation of vat on prices
SELECT NOMBREARTICULO ,  SECCION , PRECIO , round(PRECIO* 1.21, 2) AS PRECIO_IVA FROM productos;
SELECT NOMBREARTICULO ,  SECCION , PRECIO , PRECIO-3 AS PRECIO_DESCUENTO FROM productos;

-- Calculation of the difference in days between the date of a product and the current date. 
SELECT NOMBREARTICULO ,  SECCION , PRECIO , FECHA , date_format(now(), '%d-%M') AS DIA_ACTUAL, datediff(now() , FECHA) AS DIFERENCIA  FROM productos WHERE SECCION ='DEPORTES';


-- Exercices
-- Performs a query that displays the fields "NOMBRE DEL ARTICULO", "PRECIO" from the "PRODUCTOS" table and a new field that we name with the text "DESCUENTO_7".
-- It should show the result of applying in the "PRECIO" field a discount of 7%. The format of the new field for must appear with 2 decimal places.
SELECT NOMBREARTICULO, PRECIO, round((PRECIO-(PRECIO * 0.07 )),2) AS DESCUENTO_7 FROM productos;

-- Performs a query showing the fields "FECHA", "SECCION", "NOMBRE DEL ARTICULO" and "PRECIO" and a new field with the text "DTO2 €_EN_CERAMICA".  
-- It must show the result of applying on the "PRECIO" field the subtraction of 2 € only to the items of the section
-- CERAMICS SECTION. The format of the new field must appear with 2 decimal places. Sort the result of the query by descending "FECHA" field.
SELECT FECHA, SECCION , NOMBREARTICULO , PRECIO, round((PRECIO-2),2) AS DTO2_€_EN_CERAMICA FROM productos WHERE SECCION = 'CERAMICA' ORDER BY FECHA DESC;

-- Performs a query showing the fields "NOMBRE DEL ARTICULO","SECCION", "PRECIO" of the "PRODUCTOS" table and a new field that we name with the text "PRICE_AUMENTADO_EN_2". It must show the
-- "PRECIO" with an increment of 2% of the "PRECIO". e only have to take into account the records of the section "FERRETERIA". The new field must appear in Euros
-- and with 2 decimal places. 
SELECT NOMBREARTICULO, SECCION , PRECIO , concat(round((PRECIO*1.02),2), ' €') AS PRICE_AUMENTADO_EN_2 FROM productos WHERE SECCION='FERRETERIA' ;