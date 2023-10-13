/*
SP_INSERTAR_Orientacion_Borne
pararm: _Orientacion - parametros de la orientacion del borne de la bateria
fecha: 19/09/2023
autor: Vicente Tomas Contreras Duarte
*/

USE BaseBaterias;

-- insertar orientacion_borne

DELIMITER $$
CREATE PROCEDURE SP_INSERTAR_Orientacion_Borne(
    IN _Orientacion VARCHAR(100)
)
BEGIN
    INSERT INTO Orientacion_Borne (orientacion)
    VALUES (_Orientacion);
END $$

-- call SP_INSERTAR_Orientacion_Borne();