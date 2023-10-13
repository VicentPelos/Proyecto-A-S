/*
SP_ELIMINAR_ProveedorTelefono
pararm: _ID_Proveedor - id del proveedoer a elimiar telefono
fecha: 29/09/2023
autor: José Francisco Peña Torres 
*/

USE BaseBaterias;

-- ELIMINAR PROVEEDORTELEFONO

DELIMITER $$
CREATE PROCEDURE SP_ELIMINAR_ProveedorTelefono(
    IN _ID_Proveedor INT
)
BEGIN
    DELETE FROM ProveedorTelefono
    WHERE ID_Proveedor = _ID_Proveedor;
END $$