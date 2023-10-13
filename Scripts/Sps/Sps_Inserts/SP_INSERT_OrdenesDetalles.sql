/*
SP_INSERT_OrdenesDetalles
pararm: _IdOrden - id de la orden de referencia
        _IdBateria - id de la bateria de la orden
        _Cantidad - cantidad de baterias de la orden

fecha: 19/09/2023
autor: Cristobal Alonso Vargas Alegria
*/

USE BaseBaterias;

--  insertar detalle de orden
DELIMITER $$
CREATE PROCEDURE SP_INSERT_OrdenesDetalles(
    IN _IdOrden INT,
    IN _IdBateria INT,
    IN _Cantidad INT
)
BEGIN
    INSERT INTO Ordenes_Detalles (ID_Orden, ID_Bateria, Cantidad)
    VALUES (_IdOrden, _IdBateria, _Cantidad);
END$$
-- call SP_INSERT_OrdenesDetalles();