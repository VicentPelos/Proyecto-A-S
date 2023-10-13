/*
SP_SELECIONAR_Ordenes_Detalles
pararm: _ID_Orden - id de la orden a seleccionar
fecha: 19/09/2023
autor: Cristobal Alonso Vargas Alegria
*/

-- seleccionar Ordenes_Detalles

delimiter $$
Create PROCEDURE SP_SELECIONAR_Ordenes_Detalles(
    In _ID_Orden int
)
BEGIN
    SELECT * FROM Ordenes_Detalles
    where ID_Orden = _ID_Orden;
End $$