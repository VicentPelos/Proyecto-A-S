/*
SP_UPDATE_CLIENTES_UBICACION
pararm: _Id_Cliente - id del cliente a modificar
        Nuevo_Ubicacion - Nuevo dato de ubicacion
fecha: 29/09/2023
autor: José Francisco Peña Torres 
*/
use basebaterias;

-- UPDATE CLIENTES UBICACION
delimiter $$
CREATE PROCEDURE SP_UPDATE_CLIENTES_UBICACION(
    IN _Id_Cliente int,
    IN Nuevo_Ubicacion VARCHAR (50)
)
BEGIN
    UPDATE ClientesUbicacion
    SET Ubicacion = Nuevo_Ubicacion 
    where Id_Cliente = _Id_Cliente;
END $$