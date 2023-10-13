/*
SP_UPDATE_Marca
pararm: _ID_Marca - id de la marca a modificar
fecha: 29/09/2023
autor: Cristobal Alonso Vargas Alegria
*/
use basebaterias;

-- Update Marca

DELIMITER $$
CREATE PROCEDURE SP_UPDATE_Marca(
    IN _ID_Marca INT,
    IN _NuevaMarca VARCHAR(35)
)
BEGIN
    UPDATE Marca
    SET Marca = _NuevaMarca
    WHERE ID_Marca = _ID_Marca;
END $$
