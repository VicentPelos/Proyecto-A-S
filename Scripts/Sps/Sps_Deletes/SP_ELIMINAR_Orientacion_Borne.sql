/*
SP_ELIMINAR_Orientacion_Borne
pararm: _ID_Orientacion_Borne - Id de la orientacion borne a eliminar
fecha: 29/09/2023
autor: Cristobal Alonso Vargas Alegria
*/

USE BaseBaterias;

-- elimiar Orientacion_Borne

DELIMITER $$
CREATE PROCEDURE SP_ELIMINAR_Orientacion_Borne(
    IN _ID_Orientacion_Borne INT
)
BEGIN
    DELETE FROM Orientacion_Borne
    WHERE ID_Orientacion_Borne = _ID_Orientacion_Borne;
END $$