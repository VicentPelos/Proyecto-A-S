/*
SP_ELIMINAR_ProveedorCorreo
pararm: _ID_Proveedor - id del proveedor a elimianr correo
fecha: 29/09/2023
autor: José Ignacio Morales González 
*/

USE BaseBaterias;


-- ELIMIAR ProveedorTelefono

DELIMITER $$
CREATE PROCEDURE SP_ELIMINAR_ProveedorCorreo(
    IN _ID_Proveedor INT
)
BEGIN
    DELETE FROM ProveedorCorreo
    WHERE ID_Proveedor = _ID_Proveedor;
END $$