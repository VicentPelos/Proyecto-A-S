/*
SP_Insetar_Telefono
pararm: _IdCliente - id del cliente a referenciar
        _Telefono - numero de telefono del cliente
fecha: 19/09/2023
autor: Vicente Tomas Contreras Duarte 
*/

USE BaseBaterias;

-- insertar teléfono de cliente
DELIMITER $$
CREATE PROCEDURE SP_Insertar_Telefono(
    IN _IdCliente INT,
    IN _Telefono VARCHAR(12)
)
BEGIN
    INSERT INTO ClientesTelefono (Id_Cliente, Telefono)
    VALUES (_IdCliente, _Telefono);
END $$

--call SP_Insertar_Telefono()