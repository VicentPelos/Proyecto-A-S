/*
SP_ELIMINAR_TipoVehiculo
pararm: _ID_TipoVehiculo - id del tipo vehiculo a eliminar
fecha: 29/09/2023
autor: José Francisco Peña Torres 
*/

USE BaseBaterias;


-- elimiar TipoVehiculo

DELIMITER $$
CREATE PROCEDURE SP_ELIMINAR_TipoVehiculo(
    IN _ID_TipoVehiculo INT
)
BEGIN
    DELETE FROM TipoVehiculo
    WHERE ID_TipoVehiculo = _ID_TipoVehiculo;
END $$
