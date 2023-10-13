/*
SP_Eliminar_ClientesUbicacion
pararm: _Id_Cliente - id del clinete a eliminar ubicacion
fecha: 29/09/2023
autor: José Francisco Peña Torres 
*/

USE BaseBaterias;

-- Elimianr datos ClientesUbicacion
delimiter $$
Create PROCEDURE SP_Eliminar_ClientesUbicacion(
    In _Id_Cliente INT
)
BEGIN   
    DELETE FROM ClientesUbicacion
    WHERE Id_Cliente = _Id_Cliente;
END $$
