-- todos los sp Utilidades
-- Este sp se encarga de calcular el costo total de una orden de bateria

delimiter $$
Create procedure SP_ObtenerCostoTotal_Orden(
	In _ID_Orden INT
)
begin 
	SELECT OD.ID_Orden, B.precio, OD.ID_Bateria, 
	(B.precio * OD.Cantidad) as Costo_Total
	FROM baterias B
	INNER JOIN ordenes_detalles OD ON B.ID_Bateria = OD.ID_Bateria
	Where ID_Orden = _ID_Orden;
end $$ 

-- call SP_ObtenerCostoTotal_Orden(Id_ORDEN_A_CALCULAR);

--
--
--


-- Este sp se encarga de obtener todos los datos de un cliente ingresando la id


DELIMITER $$
CREATE PROCEDURE SP_ObtenerClientePorId(
	IN _cliente_id INT
)
BEGIN
    SELECT C.Id_Cliente, C.Nombre, C.Apellido, CT.Telefono, CU.Ubicacion
    FROM Clientes C
    LEFT JOIN ClientesTelefono CT ON C.Id_Cliente = CT.Id_Cliente
    LEFT JOIN ClientesUbicacion CU ON C.Id_Cliente = CU.Id_Cliente
    WHERE C.Id_Cliente = _cliente_id;
END $$

-- call SP_ObtenerClientePorId(ID_CLIENTE)

--
--
--


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

--
--
--

-- Este SP obtiene todos los datos de una bateria ingresando su id

DELIMITER $$
CREATE PROCEDURE SP_ObtenerBateriaPorId(
	IN bateria_id INT
)
BEGIN
    SELECT B.ID_Bateria, P.Nombre AS Proveedor, M.Marca, OB.orientacion AS Orientacion_Borne, 
           TV.Tipo AS TipoVehiculo, B.AMP, B.Dimensiones, B.CCA, B.Voltaje, B.Fecha_Fabricacion, 
           B.Modelo, B.precio, B.garantia
    FROM Baterias B
    INNER JOIN Proveedores P ON B.ID_Proveedor = P.ID_Proveedor
    INNER JOIN Marca M ON B.ID_Marca = M.ID_Marca
    INNER JOIN Orientacion_Borne OB ON B.ID_Orientacion_Borne = OB.ID_Orientacion_Borne
    INNER JOIN TipoVehiculo TV ON B.ID_TipoVehiculo = TV.ID_TipoVehiculo
    WHERE B.ID_Bateria = bateria_id;
END $$

-- call SP_ObtenerBateriaPorId(ID_BATERIA);

--
--
--

-- sp encargado de obtener datos de ordenes y clientes 
delimiter $$
create procedure SP_Obtener_Datos_Orden_PorId(
	In _id int
)
begin
	select o.ID_Orden, o.ID_Cliente,c.Nombre,c.Apellido, mp.Metodo_Pago, o.Fecha, od.ID_Bateria, b.Modelo, od.Cantidad, b.precio
	from ordenes o 
	left join ordenes_detalles od on o.ID_Orden = od.ID_Orden
	left join baterias b on od.ID_Bateria = b.ID_Bateria
	left join metodos_pagos mp on o.ID_Metodos_Pagos = mp.ID_Metodos_Pagos
    left join clientes c on o.ID_Cliente = c.Id_Cliente
	where o.ID_Orden = _id; 
end $$
