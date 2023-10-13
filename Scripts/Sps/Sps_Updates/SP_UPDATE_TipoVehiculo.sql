/*
SP_UPDATE_TipoVehiculo
pararm: _ID_TipoVehiculo - id de tipo vehiculo a modificar
        _NuevoTipo - Nuevo dato de tipo vehiculo
fecha: 29/09/2023
autor: José Ignacio Morales González 
*/
use basebaterias;

-- update Tipo Vehiculo

DELIMITER $$
CREATE PROCEDURE SP_UPDATE_TipoVehiculo(
    IN _ID_TipoVehiculo INT,
    IN _NuevoTipo VARCHAR(35)
)
BEGIN
    UPDATE TipoVehiculo
    SET Tipo = _NuevoTipo
    WHERE ID_TipoVehiculo = _ID_TipoVehiculo;
END $$