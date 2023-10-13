/*
SP_Eliminar_Cliente
pararm: cliente_id - id del cliente a eliminar
fecha: 29/09/2023
autor: José Francisco Peña Torres 
*/

USE BaseBaterias;

-- Elimiar datos Clientes
DELIMITER $$

CREATE PROCEDURE SP_Eliminar_Cliente(
    IN cliente_id INT
)
BEGIN
    DELETE FROM Clientes
    WHERE Id_Cliente = cliente_id;
END $$