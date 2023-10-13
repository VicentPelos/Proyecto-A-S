/*
SP_UPDATE_ProveedorCorreo
pararm: proveedor_id - ide del proveedor a modificar
        Nuevo_Correo - nuevo correo del proveedor
fecha: 29/09/2023
autor: Cristobal Alonso Vargas Alegria
*/
use basebaterias;

-- update ProveedorCorreo
CREATE PROCEDURE SP_UPDATE_ProveedorCorreo(
    In proveedor_id int,
    In Nuevo_Correo VARCHAR(50) 
)
BEGIN
    UPDATE ProveedorCorreo
    set Correo = Nuevo_Correo
    where ID_Proveedor = proveedor_id;
END $$
    