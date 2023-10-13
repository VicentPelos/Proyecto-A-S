/*
SP_SELECCIONAR_Metodos_Pagos
pararm: _ID_Metodos_Pagos - id del metodo de pago a seleccionar
fecha: 19/09/2023
autor: Vicente Tomas Contreras Duarte
*/

-- seleccionar Metodos_Pagos

delimiter $$
Create PROCEDURE SP_SELECCIONAR_Metodos_Pagos(
    In _ID_Metodos_Pagos int
)
BEGIN
    SELECT * FROM Metodos_Pagos
    where ID_Metodos_Pagos = _ID_Metodos_Pagos;
End $$