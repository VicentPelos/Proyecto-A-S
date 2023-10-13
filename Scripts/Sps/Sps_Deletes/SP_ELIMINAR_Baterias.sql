/*
SP_ELIMINAR_Baterias
pararm: _ID_Bateria - id de la bateria a eliminar
fecha: 29/09/2023
autor: José Ignacio Morales González 
*/

USE BaseBaterias;

-- eliminar baterias

DELIMITER $$
CREATE PROCEDURE SP_ELIMINAR_Baterias(
    IN _ID_Bateria INT
)
BEGIN
    DELETE FROM Baterias
    WHERE ID_Bateria = _ID_Bateria;
END $$