/*
SP_Seleccionar_Proveedores
pararm: _ID_Proovedor - id del proveedor del que desea obtener el correo
fecha: 19/09/2023
autor: Cristobal Alonso Vargas Alegria
*/


-- Selecciona proveedores
delimiter $$
Create PROCEDURE SP_Seleccionar_Proveedores(
    In _ID_Proovedor int
)
BEGIN
    SELECT * FROM Proveedores
    where ID_Proveedor = _ID_Proovedor;
END $$