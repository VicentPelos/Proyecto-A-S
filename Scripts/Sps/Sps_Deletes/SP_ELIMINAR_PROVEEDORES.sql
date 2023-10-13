/*
SP_ELIMINAR_PROVEEDORES
pararm: id - del proveedor a eliminar
fecha: 29/09/2023
autor: José Ignacio Morales González 
*/

USE BaseBaterias;

-- ELIMINAR PROVEEDORES

DELIMITER $$
CREATE PROCEDURE SP_ELIMINAR_PROVEEDORES (
    IN _ID_Proovedor int
)
BEGIN
    DELETE FROM Proveedores
    where ID_Proovedor = _ID_Proovedor;
END $$