/*
Todos los sp de updates
autor: Todos los miembros
*/
use basebaterias;
-- Update Clientes
DELIMITER $$
CREATE PROCEDURE SP_Update_Cliente(
    IN cliente_id INT,
    IN nuevo_nombre VARCHAR(100),
    IN nuevo_apellido VARCHAR(100)
)
BEGIN
    UPDATE Clientes
    SET Nombre = nuevo_nombre, Apellido = nuevo_apellido
    WHERE Id_Cliente = cliente_id;
END $$

-- UPDATE CLIENTES TELEFONO
delimiter $$
Create PROCEDURE SP_Update_ClientesTelefono(
    In cliente_id INT,
    In Nuevo_Telefono VARCHAR(12)
)
BEGIN
    Update ClientesTelefono
    SET Telefono = Nuevo_Telefono
    WHERE cliente_id = Id_Cliente;
END $$

-- UPDATE CLIENTES UBICACION
delimiter $$
CREATE PROCEDURE SP_UPDATE_CLIENTES_UBICACION(
    IN _Id_Cliente int,
    IN Nuevo_Ubicacion VARCHAR (50)
)
BEGIN
    UPDATE ClientesUbicacion
    SET Ubicacion = Nuevo_Ubicacion 
    where Id_Cliente = _Id_Cliente;
END $$

--UPDATE Proveedores
DELIMITER $$
CREATE PROCEDURE SP_UPDATE_Proveedores(
    IN proveedor_id INT,
    IN nuevo_nombre VARCHAR(150)
)
BEGIN
    UPDATE Proveedores
    SET Nombre = nuevo_nombre
    WHERE ID_Proveedor = proveedor_id;
END $$

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

-- Update Marca

DELIMITER $$
CREATE PROCEDURE SP_UPDATE_Marca(
    IN _ID_Marca INT,
    IN _NuevaMarca VARCHAR(35)
)
BEGIN
    UPDATE Marca
    SET Marca = _NuevaMarca
    WHERE ID_Marca = _ID_Marca;
END $$


-- update Orientacion_Borne

DELIMITER $$
CREATE PROCEDURE SP_UPDATE_OrientacionBorne(
    IN _ID_Orientacion_Borne INT,
    IN _NuevaOrientacion VARCHAR(100)
)
BEGIN
    UPDATE Orientacion_Borne
    SET orientacion = _NuevaOrientacion
    WHERE ID_Orientacion_Borne = _ID_Orientacion_Borne;
END $$

-- update Tipo Vehiculo

DELIMITER $$
CREATE PROCEDURE SP_UPDATE_TipoVehiculo(
    IN _ID_TipoVehiculo INT,
    IN _NuevoTipo VARCHAR(35)
)
BEGIN
    UPDATE TipoVehiculo
    SET Tipo = _NuevoTipo
    WHERE ID_TipoVehiculo = _ID_TipoVehiculo;
END $$

-- Update Baterias

DELIMITER $$
CREATE PROCEDURE SP_UPDATE_Bateria(
    IN _ID_Bateria INT,
    IN _ID_Proveedor INT,
    IN _ID_Marca INT,
    IN _ID_Orientacion_Borne INT,
    IN _ID_TipoVehiculo INT,
    IN _AMP VARCHAR(25),
    IN _Dimensiones VARCHAR(50),
    IN _CCA INT,
    IN _Voltaje DECIMAL(5,2),
    IN _Fecha_Fabricacion DATE,
    IN _Modelo VARCHAR(25),
    IN _Precio DECIMAL(10,2),
    IN _Garantia DATE
)
BEGIN
    UPDATE Baterias
    SET
        ID_Proveedor = _ID_Proveedor,
        ID_Marca = _ID_Marca,
        ID_Orientacion_Borne = _ID_Orientacion_Borne,
        ID_TipoVehiculo = _ID_TipoVehiculo,
        AMP = _AMP,
        Dimensiones = _Dimensiones,
        CCA = _CCA,
        Voltaje = _Voltaje,
        Fecha_Fabricacion = _Fecha_Fabricacion,
        Modelo = _Modelo,
        precio = _Precio,
        garantia = _Garantia
    WHERE ID_Bateria = _ID_Bateria;
END $$
-- probar metodos de pago
-- Update metodos de pago
delimiter $$ 
Create PROCEDURE SP_UPDATE_Metodos_Pagos(
    In _ID_Metodos_Pagos INT,
    In _Metodo_Pago VARCHAR(30)
)
BEGIN
    Update Metodos_Pagos
    set
        Metodo_Pago = _Metodo_Pago
    where ID_Metodos_Pagos = _ID_Metodos_Pagos;
END $$
        
-- Update ordenes
--ASEGURESE DE CALCULAR COSTO TOTAL CON call (SP_CostoTotal) que le devolvera el valor a ingresar en Costo_Total
delimiter $$
CREATE PROCEDURE SP_UPDATE_Ordenes(
    In _ID_Orden Int,
    In _ID_Cliente int,
    In _ID_Metodos_Pagos int,
    In _Fecha DATE
)
BEGIN
    UPDATE Ordenes
    SET
        ID_Cliente = _ID_Cliente,
        ID_Metodos_Pagos = _ID_Metodos_Pagos,
        Fecha = _Fecha
    WHERE ID_Orden = _ID_Orden;
END $$

-- update Ordenes_Detalles
DELIMITER $$
CREATE PROCEDURE SP_UPDATE_OrdenDetalle(
    IN _ID_Orden INT,
    IN _ID_Bateria INT,
    IN _Cantidad INT
)
BEGIN
    UPDATE Ordenes_Detalles
    SET
        Cantidad = _Cantidad,
        ID_Bateria = _ID_Bateria
    WHERE ID_Orden = _ID_Orden;
END $$