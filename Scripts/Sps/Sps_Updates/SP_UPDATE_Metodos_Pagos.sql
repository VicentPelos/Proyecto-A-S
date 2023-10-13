/*
SP_UPDATE_Metodos_Pagos
pararm: _ID_Metodos_Pagos - id de metodos de pago a modificar
        _Metodo_Pago - nuevo metodo de pago
fecha: 29/09/2023
autor: Cristóbal Alonso Vargas Alegría 
*/
use basebaterias;

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