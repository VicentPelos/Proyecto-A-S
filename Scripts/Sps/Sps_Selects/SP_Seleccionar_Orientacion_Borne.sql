/*
SP_Seleccionar_Orientacion_Borne
pararm: _ID_Orientacion_Borne - id de la orientacion a seleccionar
fecha: 19/09/2023
autor: Cristobal Alonso Vargas Alegria
*/
DELIMITER $$
CREATE PROCEDURE SP_Seleccionar_Orientacion_Borne(
    iN _ID_Orientacion_Borne int	
)
BEGIN
    SELECT * FROM Orientacion_Borne
    where ID_Orientacion_Borne = _ID_Orientacion_Borne;
END$$
