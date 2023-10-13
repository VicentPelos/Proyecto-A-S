/*
SP_Update_Cliente
pararm: cliente_id - id del cliente a modificar
        nuevo_nombre - nommbre nuevo
        nuevo_apellido - apellido nuevo
fecha: 29/09/2023
autor: Cristobal Alonso Vargas Alegria
*/
use basebaterias;
-- Update Clientes
DELIMITER $$
CREATE PROCEDURE SP_Update_Cliente(
    IN cliente_id INT,
    IN nuevo_nombre VARCHAR(100),
    IN nuevo_apellido VARCHAR(100)
)
BEGIN
    UPDATE Clientes
    SET Nombre = nuevo_nombre, Apellido = nuevo_apellido
    WHERE Id_Cliente = cliente_id;
END $$