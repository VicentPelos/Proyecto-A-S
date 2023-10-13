/*
Todos los sp de inserts
autor: Todos los miembros
*/

USE BaseBaterias;
-- insertar  cliente

DELIMITER $$
CREATE PROCEDURE SP_Insertar_Cliente(
    IN _Nombre VARCHAR(100),
    IN _Apellido VARCHAR(100)
)
BEGIN
    INSERT INTO Clientes (Nombre, Apellido)
    VALUES (_Nombre, _Apellido);
END $$

-- insertar teléfono de cliente
DELIMITER $$
CREATE PROCEDURE SP_Insertar_Telefono(
    IN _IdCliente INT,
    IN _Telefono VARCHAR(12)
)
BEGIN
    INSERT INTO ClientesTelefono (Id_Cliente, Telefono)
    VALUES (_IdCliente, _Telefono);
END $$

-- insertar ubicación de cliente

DELIMITER $$
CREATE PROCEDURE SP_Insertar_ClientesUbicacion(
    IN _IdCliente INT,
    IN _Ubicacion VARCHAR(50)
)
BEGIN
    INSERT INTO ClientesUbicacion (Id_Cliente, Ubicacion)
    VALUES (_IdCliente, _Ubicacion);
END $$

-- insertar  proveedor

DELIMITER $$
CREATE PROCEDURE SP_Insertar_Proveedores(
    IN _Nombre VARCHAR(150)
)
BEGIN
    INSERT INTO Proveedores (Nombre)
    VALUES (_Nombre);
END $$

-- insertar correo de proveedor

DELIMITER $$
CREATE PROCEDURE SP_Insertar_ProveedorCorreo(
    IN _IdProveedor INT,
    IN _Correo VARCHAR(50)
)
BEGIN
    INSERT INTO ProveedorCorreo (ID_Proveedor, Correo)
    VALUES (_IdProveedor, _Correo);
END $$

-- insertar teléfono de proveedor

DELIMITER $$
CREATE PROCEDURE SP_INSERTAR_PROVEEDORTELEFONO(
    IN _IdProveedor INT,
    IN _Telefono VARCHAR(12)
)
BEGIN
    INSERT INTO ProveedorTelefono (ID_Proveedor, Telefono)
    VALUES (_IdProveedor, _Telefono);
END $$

-- insertar marca

DELIMITER $$
CREATE PROCEDURE SP_Insertar_MARCA(
    IN _Marca VARCHAR(35)
)
BEGIN
    INSERT INTO Marca (Marca)
    VALUES (_Marca);
END $$


-- insertar orientacion_borne

DELIMITER $$
CREATE PROCEDURE SP_INSERTAR_Orientacion_Borne(
    IN _Orientacion VARCHAR(100)
)
BEGIN
    INSERT INTO Orientacion_Borne (orientacion)
    VALUES (_Orientacion);
END $$


-- insertar tipo vehiculo

DELIMITER $$
CREATE PROCEDURE SP_INSERTAR_TipoVehiculo(
    IN _Tipo VARCHAR(35)
)
BEGIN
    INSERT INTO TipoVehiculo (Tipo)
    VALUES (_Tipo);
END $$

-- insertar baterias 

DELIMITER $$
CREATE PROCEDURE SP_InsertarBateria(
    IN _IdProveedor INT,
    IN _IdMarca INT,
    IN _IdOrientacionBorne INT,
    IN _IdTipoVehiculo INT,
    IN _AMP VARCHAR(25),
    IN _Dimensiones VARCHAR(50),
    IN _CCA INT,
    IN _Voltaje DECIMAL(5,2),
    IN _FechaFabricacion DATE,
    IN _Modelo VARCHAR(25),
    IN _Precio DECIMAL(10,2),
    IN _Garantia DATE
)
BEGIN
    INSERT INTO Baterias (ID_Proveedor, ID_Marca, ID_Orientacion_Borne, ID_TipoVehiculo, AMP, Dimensiones, CCA, Voltaje, Fecha_Fabricacion, Modelo, precio, garantia)
    VALUES (_IdProveedor, _IdMarca, _IdOrientacionBorne, _IdTipoVehiculo, _AMP, _Dimensiones, _CCA, _Voltaje, _FechaFabricacion, _Modelo, _Precio, _Garantia);
END$$


-- insertar método de pago
DELIMITER $$
CREATE PROCEDURE SP_INSERT_MetodosPagos(
    IN _MetodoPago VARCHAR(30)
)
BEGIN
    INSERT INTO Metodos_Pagos (Metodo_Pago) VALUES (_MetodoPago);
END$$


-- insertar orden 
DELIMITER $$
CREATE PROCEDURE SP_INSERT_Ordenes(
    IN _IdCliente INT,
    IN _IdMetodoPago INT,
    IN _Fecha DATE
)
BEGIN
    INSERT INTO Ordenes (ID_Cliente, ID_Metodos_Pagos, Fecha)
    VALUES (_IdCliente, _IdMetodoPago, _Fecha);
END$$


--  insertar detalle de orden
DELIMITER $$
CREATE PROCEDURE SP_INSERT_OrdenesDetalles(
    IN _IdOrden INT,
    IN _IdBateria INT,
    IN _Cantidad INT
)
BEGIN
    INSERT INTO Ordenes_Detalles (ID_Orden, ID_Bateria, Cantidad)
    VALUES (_IdOrden, _IdBateria, _Cantidad);
END$$