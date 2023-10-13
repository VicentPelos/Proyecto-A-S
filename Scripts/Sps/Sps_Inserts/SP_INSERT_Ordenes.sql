/*
SP_INSERT_Ordenes
pararm: _IdCliente - id del cliente de la orden
        _IdMetodoPago - id del metodo de pago
        _Fecha - fecha de la orden
fecha: 19/09/2023
autor: Vicente Tomas Contreras Duarte
*/

USE BaseBaterias;

-- insertar orden 
DELIMITER $$
CREATE PROCEDURE SP_INSERT_Ordenes(
    IN _IdCliente INT,
    IN _IdMetodoPago INT,
    IN _Fecha DATE
)
BEGIN
    INSERT INTO Ordenes (ID_Cliente, ID_Metodos_Pagos, Fecha)
    VALUES (_IdCliente, _IdMetodoPago, _Fecha);
END$$

-- call SP_INSERT_Ordenes();