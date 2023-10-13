/*
SP_UPDATE_OrientacionBorne
pararm: _ID_Orientacion_Borne - id de la orientacion borne a modificar
        _NuevaOrientacion - Nuevo dato de orientacion borne
fecha: 29/09/2023
autor: José Francisco Peña Torres 
*/
use basebaterias;

-- update Orientacion_Borne

DELIMITER $$
CREATE PROCEDURE SP_UPDATE_OrientacionBorne(
    IN _ID_Orientacion_Borne INT,
    IN _NuevaOrientacion VARCHAR(100)
)
BEGIN
    UPDATE Orientacion_Borne
    SET orientacion = _NuevaOrientacion
    WHERE ID_Orientacion_Borne = _ID_Orientacion_Borne;
END $$
