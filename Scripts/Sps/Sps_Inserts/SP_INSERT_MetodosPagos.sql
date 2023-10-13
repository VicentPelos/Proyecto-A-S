/*
SP_INSERT_MetodosPagos
pararm: _MetodoPago, se ingresa el nombre del metodo de pago
fecha: 19/09/2023
autor: Cristobal Alonso Vargas Alegria
*/

USE BaseBaterias;

-- insertar método de pago
DELIMITER $$
CREATE PROCEDURE SP_INSERT_MetodosPagos(
    IN _MetodoPago VARCHAR(30)
)
BEGIN
    INSERT INTO Metodos_Pagos (Metodo_Pago) VALUES (_MetodoPago);
END$$

-- call SP_INSERT_MetodosPagos();