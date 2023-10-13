/*
SP_ELIMINAR_Ordenes
pararm: _ID_Orden - id de la orden a eliminar
fecha: 29/09/2023
autor: Cristóbal Alonso Vargas Alegría 
*/

--ELIMIAR ORDENES

DELIMITER $$
CREATE PROCEDURE SP_ELIMINAR_Ordenes(
    IN _ID_Orden INT
)
BEGIN
    DELETE FROM Ordenes
    WHERE ID_Orden = _ID_Orden;
END $$