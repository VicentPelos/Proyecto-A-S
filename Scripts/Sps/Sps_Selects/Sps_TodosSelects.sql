/*
Todos los sp de seleccionar
autor: Todos los miembros
*/
-- seleciona usuario de tabla user


delimiter $$ 
CREATE PROCEDURE Sp_Seleccionar_Usuario(
    In _ID_Cliente int
)
BEGIN 
    SELECT * from clientes
    WHERE Id_Cliente = _ID_Cliente;
END $$

-- selecciona tabla ClientesTelefono

delimiter $$
Create PROCEDURE Sp_Seleciconar_ClientesTelefono(
    In _Id_Cliente int
)
BEGIN
    SELECT * from ClientesTelefono
    where Id_Cliente = _Id_Cliente;
END $$

-- selecciona ClientesUbicacion

delimiter $$
Create PROCEDURE SP_Seleccionar_ClientesUbicacion(
    In _Id_Cliente int
)
BEGIN 
    SELECT * FROM ClientesUbicacion
    WHERE Id_Cliente = _Id_Cliente;
END $$

-- Selecciona proveedores
delimiter $$
Create PROCEDURE SP_Seleccionar_Proveedores(
    In _ID_Proovedor int
)
BEGIN
    SELECT * FROM Proveedores
    where ID_Proveedor = _ID_Proovedor;
END $$

-- selecciona ProveedorCorreo

delimiter $$
Create PROCEDURE SP_SELECICONAR_ProveedorCorreo(
    In _ID_Proveedor int
)
BEGIN
    SELECT * FROM ProveedorCorreo
    where ID_Proveedor = _ID_Proveedor;
END $$

-- Seleccionar ProveedorTelefono
delimiter $$
Create PROCEDURE SP_SELECCIOANR_ProveedorTelefono(
    In _ID_Proveedor int
)
BEGIN
    SELECT * FROM ProveedorTelefono
    WHERE ID_Proveedor = _ID_Proveedor;
END $$

-- seleccioanr marca

delimiter $$
Create PROCEDURE SP_SELECCIOANR_MARCA(
    IN _ID_Marca int
)
BEGIN 
    SELECT * FROM Marca
    where ID_Marca = _ID_Marca;
END $$

-- seleciconar Orientacion_Borne

delimiter $$
Create PROCEDURE SP_Seleccionar_Orientacion_Borne(
    iN _ID_Orientacion_Borne int	
)
BEGIN
    SELECT * FROM Orientacion_Borne
    where ID_Orientacion_Borne = _ID_Orientacion_Borne;
END $$

-- seleccionar TipoVehiculo
delimiter $$
Create PROCEDURE SP_SELECT_TipoVehiculo(
    iN _ID_TipoVehiculo INT
)
BEGIN
    SELECT * FROM TipoVehiculo
    where ID_TipoVehiculo = _ID_TipoVehiculo;
End $$

-- seleccionar Baterias

delimiter $$
CREATE PROCEDURE SP_SELECICONAR_BATERIAS(
    IN _ID_Bateria INT
)
BEGIN
    SELECT * FROM Baterias
    where ID_Bateria = _ID_Bateria;
End $$

-- seleccionar Metodos_Pagos

delimiter $$
Create PROCEDURE SP_SELECCIONAR_Metodos_Pagos(
    In _ID_Metodos_Pagos int
)
BEGIN
    SELECT * FROM Metodos_Pagos
    where ID_Metodos_Pagos = _ID_Metodos_Pagos;
End $$

-- seleccioanr ordenes
delimiter $$
Create PROCEDURE SP_SELECCIONAR_Ordenes(
    In _ID_Orden int
)
BEGIN
    SELECT * FROM Ordenes
    where ID_Orden = _ID_Orden;
End $$

-- seleccionar Ordenes_Detalles

delimiter $$
Create PROCEDURE SP_SELECIONAR_Ordenes_Detalles(
    In _ID_Orden int
)
BEGIN
    SELECT * FROM Ordenes_Detalles
    where ID_Orden = _ID_Orden;
End $$