/*
Todos los sp delete
autor: todos los miembros
*/

USE BaseBaterias;

-- Elimiar datos Clientes
DELIMITER $$

CREATE PROCEDURE SP_Eliminar_Cliente(
    IN cliente_id INT
)
BEGIN
    DELETE FROM Clientes
    WHERE Id_Cliente = cliente_id;
END $$

-- ELIMINAR CLIENTESTELEFONO
delimiter $$
CREATE PROCEDURE SP_ELIMINAR_CLIENTE_TELEFONO(
    in _Id_Cliente int
)
BEGIN
    DELETE FROM ClientesTelefono
    where Id_Cliente = _Id_Cliente;
END $$

-- Elimianr datos ClientesUbicacion
delimiter $$
Create PROCEDURE SP_Eliminar_ClientesUbicacion(
    In _Id_Cliente INT
)
BEGIN   
    DELETE FROM ClientesUbicacion
    WHERE Id_Cliente = _Id_Cliente;
END $$

-- ELIMINAR PROVEEDORES

DELIMITER $$
CREATE PROCEDURE SP_ELIMINAR_PROVEEDORES (
    IN _ID_Proovedor int
)
BEGIN
    DELETE FROM Proveedores
    where ID_Proovedor = _ID_Proovedor;
END $$

-- ELIMINAR PROVEEDORTELEFONO

DELIMITER $$
CREATE PROCEDURE SP_ELIMINAR_ProveedorTelefono(
    IN _ID_Proveedor INT
)
BEGIN
    DELETE FROM ProveedorTelefono
    WHERE ID_Proveedor = _ID_Proveedor;
END $$

-- ELIMIAR ProveedorTelefono

DELIMITER $$
CREATE PROCEDURE SP_ELIMINAR_ProveedorCorreo(
    IN _ID_Proveedor INT
)
BEGIN
    DELETE FROM ProveedorCorreo
    WHERE ID_Proveedor = _ID_Proveedor;
END $$

-- elimiar Marca

DELIMITER $$
CREATE PROCEDURE SP_ELIMINAR_Marca(
    IN _ID_Marca INT
)
BEGIN
    DELETE FROM Marca
    WHERE ID_Marca = _ID_Marca;
END $$

-- elimiar Orientacion_Borne

DELIMITER $$
CREATE PROCEDURE SP_ELIMINAR_Orientacion_Borne(
    IN _ID_Orientacion_Borne INT
)
BEGIN
    DELETE FROM Orientacion_Borne
    WHERE ID_Orientacion_Borne = _ID_Orientacion_Borne;
END $$

-- elimiar TipoVehiculo

DELIMITER $$
CREATE PROCEDURE SP_ELIMINAR_TipoVehiculo(
    IN _ID_TipoVehiculo INT
)
BEGIN
    DELETE FROM TipoVehiculo
    WHERE ID_TipoVehiculo = _ID_TipoVehiculo;
END $$

-- eliminar baterias

DELIMITER $$
CREATE PROCEDURE SP_ELIMINAR_Baterias(
    IN _ID_Bateria INT
)
BEGIN
    DELETE FROM Baterias
    WHERE ID_Bateria = _ID_Bateria;
END $$

-- eliminar Metodos_Pagos

DELIMITER $$
CREATE PROCEDURE SP_ELIMINAR_Metodos_Pagos(
    IN _ID_Metodos_Pagos INT
)
BEGIN
    DELETE FROM Metodos_Pagos
    WHERE ID_Metodos_Pagos = _ID_Metodos_Pagos;
END $$

--ELIMIAR ORDENES

DELIMITER $$
CREATE PROCEDURE SP_ELIMINAR_Ordenes(
    IN _ID_Orden INT
)
BEGIN
    DELETE FROM Ordenes
    WHERE ID_Orden = _ID_Orden;
END $$

-- eliminar Ordenes_Detalles
DELIMITER $$
CREATE PROCEDURE SP_ELIMINAR_Ordenes_Detalles(
    IN _ID_Orden INT
)
BEGIN
    DELETE FROM Ordenes_Detalles
    WHERE ID_Orden = _ID_Orden;
END $$