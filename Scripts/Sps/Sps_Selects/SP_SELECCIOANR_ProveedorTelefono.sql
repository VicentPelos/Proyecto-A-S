/*
SP_SELECCIOANR_ProveedorTelefono
pararm: _ID_Proveedor -id del proveedor del que desea obtener el telefono
fecha: 19/09/2023
autor: Cristobal Alonso Vargas Alegria
*/


-- Seleccionar ProveedorTelefono
delimiter $$
Create PROCEDURE SP_SELECCIOANR_ProveedorTelefono(
    In _ID_Proveedor int
)
BEGIN
    SELECT * FROM ProveedorTelefono
    WHERE ID_Proveedor = _ID_Proveedor;
END $$