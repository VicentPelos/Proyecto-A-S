/*
SP_Seleccionar_ClientesUbicacion
pararm: _Id_Cliente - id del cliente a seleccionar la ubicacion
fecha: 19/09/2023
autor: Cristobal Alonso Vargas Alegria
*/

-- selecciona ClientesUbicacion

delimiter $$
Create PROCEDURE SP_Seleccionar_ClientesUbicacion(
    In _Id_Cliente int
)
BEGIN 
    SELECT * FROM ClientesUbicacion
    WHERE Id_Cliente = _Id_Cliente;
END $$