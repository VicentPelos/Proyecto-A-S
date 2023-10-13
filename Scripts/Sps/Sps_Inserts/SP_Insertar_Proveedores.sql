/*
SP_Insertar_Proveedores
pararm: _Nombre - Nombre del proveedor
fecha: 19/09/2023
autor: Vicente Tomas Contreras Duarte 
*/

USE BaseBaterias;

-- insertar  proveedor

DELIMITER $$
CREATE PROCEDURE SP_Insertar_Proveedores(
    IN _Nombre VARCHAR(150)
)
BEGIN
    INSERT INTO Proveedores (Nombre)
    VALUES (_Nombre);
END $$

-- call SP_Insertar_Proveedores();