/*
SP_SELECICONAR_BATERIAS
pararm: _ID_Bateria - id de la bateria a seleccionar
fecha: 19/09/2023
autor: Cristobal Alonso Vargas Alegria
*/

-- seleccionar Baterias

delimiter $$
CREATE PROCEDURE SP_SELECICONAR_BATERIAS(
    IN _ID_Bateria INT
)
BEGIN
    SELECT * FROM Baterias
    where ID_Bateria = _ID_Bateria;
End $$