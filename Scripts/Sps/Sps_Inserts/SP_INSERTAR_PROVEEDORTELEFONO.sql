/*
SP_INSERTAR_PROVEEDORTELEFONO
pararm: _IdProveedor - id del proveedor a referenciar
        _Telefono - telefono del proveedor
fecha: 19/09/2023
autor: Vicente Tomas Contreras Duarte
*/

USE BaseBaterias;

-- insertar teléfono de proveedor

DELIMITER $$
CREATE PROCEDURE SP_INSERTAR_PROVEEDORTELEFONO(
    IN _IdProveedor INT,
    IN _Telefono VARCHAR(12)
)
BEGIN
    INSERT INTO ProveedorTelefono (ID_Proveedor, Telefono)
    VALUES (_IdProveedor, _Telefono);
END $$

-- call SP_INSERTAR_PROVEEDORTELEFONO();