/*
SP_Insertar_MARCA
pararm: _Marca - Nombre de la marca de la bateria
fecha: 19/09/2023
autor: Cristóbal Alonso Vargas Alegría 
*/

USE BaseBaterias;

-- insertar marca

DELIMITER $$
CREATE PROCEDURE SP_Insertar_MARCA(
    IN _Marca VARCHAR(35)
)
BEGIN
    INSERT INTO Marca (Marca)
    VALUES (_Marca);
END $$

-- call SP_Insertar_MARCA();