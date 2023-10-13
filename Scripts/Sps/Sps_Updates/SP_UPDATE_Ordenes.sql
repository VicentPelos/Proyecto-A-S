/*
SP_UPDATE_Ordenes
pararm: _ID_Orden - id de la orden a modificar
        _ID_Cliente - nuevo id de cliente
        _ID_Metodos_Pagos - nueva id de metodos de pago
        _Fecha - nueva fecha
fecha: 29/09/2023
autor: José Ignacio Morales González 
*/
use basebaterias;
 
-- Update ordenes

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