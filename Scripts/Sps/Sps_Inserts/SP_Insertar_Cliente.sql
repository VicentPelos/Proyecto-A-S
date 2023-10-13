/*
Sp_Insertar_Cliente
pararm: _Nombre - Nombre del cliente
        _Apellido - apellido del cliente
fecha: 19/09/2023
autor: Cristóbal Alonso Vargas Alegría
*/

USE BaseBaterias;
-- insertar  cliente

DELIMITER $$
CREATE PROCEDURE SP_Insertar_Cliente(
    IN _Nombre VARCHAR(100),
    IN _Apellido VARCHAR(100)
)
BEGIN
    INSERT INTO Clientes (Nombre, Apellido)
    VALUES (_Nombre, _Apellido);
END $$

-- call SP_Insertar_Cliente();