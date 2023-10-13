/*
SP_ObtenerCostoTotal_Orden
pararm: _ID_Orden - id de la orden de la cual se obtendra el costo total
fecha: 29/09/2023
autor: Vicente Tomas Contreras Duarte
*/

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