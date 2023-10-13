/*
SP_ELIMINAR_Marca
pararm: _ID_Marca - id de la marca a eliminar
fecha: 29/09/2023
autor: Vicente Tomas Contreras Duarte
*/

USE BaseBaterias;

-- elimiar Marca

DELIMITER $$
CREATE PROCEDURE SP_ELIMINAR_Marca(
    IN _ID_Marca INT
)
BEGIN
    DELETE FROM Marca
    WHERE ID_Marca = _ID_Marca;
END $$