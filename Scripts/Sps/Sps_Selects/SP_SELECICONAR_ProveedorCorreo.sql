/*
SP_SELECICONAR_ProveedorCorreo
pararm: _ID_Proveedor - id del proveedor del que desea seleccionar
fecha: 19/09/2023
autor: Vicente Tomas Contreras Duarte
*/

-- selecciona ProveedorCorreo

delimiter $$
Create PROCEDURE SP_SELECICONAR_ProveedorCorreo(
    In _ID_Proveedor int
)
BEGIN
    SELECT * FROM ProveedorCorreo
    where ID_Proveedor = _ID_Proveedor;
END $$