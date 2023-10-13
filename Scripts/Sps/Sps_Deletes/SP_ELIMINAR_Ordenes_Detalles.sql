/*
SP_ELIMINAR_Ordenes_Detalles
pararm: _ID_Orden - id del detalle de la orden a eliminar
fecha: 29/09/2023
autor: José Ignacio Morales González 
*/

-- eliminar Ordenes_Detalles
DELIMITER $$
CREATE PROCEDURE SP_ELIMINAR_Ordenes_Detalles(
    IN _ID_Orden INT
)
BEGIN
    DELETE FROM Ordenes_Detalles
    WHERE ID_Orden = _ID_Orden;
END $$