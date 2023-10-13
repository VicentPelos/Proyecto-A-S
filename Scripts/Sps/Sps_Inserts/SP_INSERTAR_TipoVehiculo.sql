/*
SP_INSERTAR_TipoVehiculo
pararm: _Tipo - tipo de vehiculo a insertar
fecha: 19/09/2023
autor: Cristobal Alonso Vargas Alegria
*/

USE BaseBaterias;

-- insertar tipo vehiculo

DELIMITER $$
CREATE PROCEDURE SP_INSERTAR_TipoVehiculo(
    IN _Tipo VARCHAR(35)
)
BEGIN
    INSERT INTO TipoVehiculo (Tipo)
    VALUES (_Tipo);
END $$

-- call SP_INSERTAR_TipoVehiculo();