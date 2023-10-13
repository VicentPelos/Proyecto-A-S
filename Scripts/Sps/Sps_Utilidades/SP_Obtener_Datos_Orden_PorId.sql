/*
SP_Obtener_Datos_Orden_PorId
pararm: _id - id de la orden cual desea ver informacion
fecha: 29/09/2023
autor: Vicente Tomas Contreras Duarte
*/

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









