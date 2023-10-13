/*
SP_UPDATE_OrdenDetalle
pararm: _ID_Orden - id de orden a modificar
        _ID_Bateria - nueva id de bateria
        _Cantidad - nueva cantidad
fecha: 29/09/2023
autor: José Francisco Peña Torres 
*/
use basebaterias;
 
-- update Ordenes_Detalles
DELIMITER $$
CREATE PROCEDURE SP_UPDATE_OrdenDetalle(
    IN _ID_Orden INT,
    IN _ID_Bateria INT,
    IN _Cantidad INT
)
BEGIN
    UPDATE Ordenes_Detalles
    SET
        Cantidad = _Cantidad,
        ID_Bateria = _ID_Bateria
    WHERE ID_Orden = _ID_Orden;
END $$