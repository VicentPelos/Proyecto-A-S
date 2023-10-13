/*
SP_SELECCIONAR_Ordenes
pararm: _ID_Orden - id de la orden a seleccionar
fecha: 19/09/2023
autor: Vicente Tomas Contreras Duarte
*/

-- seleccioanr ordenes
delimiter $$
Create PROCEDURE SP_SELECCIONAR_Ordenes(
    In _ID_Orden int
)
BEGIN
    SELECT * FROM Ordenes
    where ID_Orden = _ID_Orden;
End $$