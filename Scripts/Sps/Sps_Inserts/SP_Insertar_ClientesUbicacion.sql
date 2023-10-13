/*
SP_Insertar_ClientesUbicacion
pararm: _IdCliente - Id del cliente a referenciar
        _Ubicacion - ubicacion del cliente
fecha: 19/09/2023
autor: Cristóbal Alonso Vargas Alegría 
*/

USE BaseBaterias;

-- insertar ubicación de cliente

DELIMITER $$
CREATE PROCEDURE SP_Insertar_ClientesUbicacion(
    IN _IdCliente INT,
    IN _Ubicacion VARCHAR(50)
)
BEGIN
    INSERT INTO ClientesUbicacion (Id_Cliente, Ubicacion)
    VALUES (_IdCliente, _Ubicacion);
END $$
-- call SP_Insertar_ClientesUbicacion();