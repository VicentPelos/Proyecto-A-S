/*
SP_UPDATE_ProveedorTelefono
pararm: _ID_Proveedor - Id del proveedor a modificar
        _Telefono - Nuevo Numero de telefono
fecha: 29/09/2023
autor: José Ignacio Morales González 
*/
use basebaterias;

-- UPDATE PROVEEDORTELEFONO
CREATE PROCEDURE SP_UPDATE_ProveedorTelefono(
    in _ID_Proveedor INT,
    in _Telefono varchar (12)
)
BEGIN 
    update ProveedorTelefono
    set Telefono = _Telefono
    where ID_Proveedor = _ID_Proveedor;
END $$