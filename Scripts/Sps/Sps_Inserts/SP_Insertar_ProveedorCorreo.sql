/*
SP_Insertar_ProveedorCorreo
pararm: _IdProveedor - id del proveedor a referenciar
        _Correo - Correo del proveedor
fecha: 19/09/2023
autor: Cristóbal Alonso Vargas Alegría 
*/

USE BaseBaterias;

-- insertar correo de proveedor

DELIMITER $$
CREATE PROCEDURE SP_Insertar_ProveedorCorreo(
    IN _IdProveedor INT,
    IN _Correo VARCHAR(50)
)
BEGIN
    INSERT INTO ProveedorCorreo (ID_Proveedor, Correo)
    VALUES (_IdProveedor, _Correo);
END $$

-- call SP_Insertar_ProveedorCorreo();