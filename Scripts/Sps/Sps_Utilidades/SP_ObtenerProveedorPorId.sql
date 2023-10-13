/*
SP_ObtenerProveedorPorId
pararm: _ID_Proveedor - id del proveedor del cual desea obtener toda la informacion
fecha: 29/09/2023
autor: Vicente Tomas Contreras Duarte
*/

-- Este SP se encarga de obtener todos los datos de un proveedor ingresando la id

DELIMITER $$
Create PROCEDURE SP_ObtenerProveedorPorId(
	In _ID_Proveedor int
)
BEGIN
	SELECT P.ID_Proveedor, P.Nombre, PT.Telefono, PC.Correo
    FROM proveedores P
    LEFT JOIN proveedorcorreo PC on P.ID_Proveedor = PC.ID_Proveedor
    LEFT JOIN proveedortelefono PT on P.ID_Proveedor = PT.ID_Proveedor
    Where P.ID_Proveedor = _ID_Proveedor;
END $$

-- Call SP_ObtenerProveedorPorId(ID_PROVEEDOR);