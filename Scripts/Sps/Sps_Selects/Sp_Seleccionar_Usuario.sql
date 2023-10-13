/*
Sp_Seleccionar_Usuario
pararm: _ID_Cliente, id del cliente a seleccionar
fecha: 19/09/2023
autor: Cristobal Alonso Vargas Alegria
*/
-- seleciona usuario de tabla user


delimiter $$ 
CREATE PROCEDURE Sp_Seleccionar_Usuario(
    In _ID_Cliente int
)
BEGIN 
    SELECT * from clientes
    WHERE Id_Cliente = _ID_Cliente;
END $$

-- call Sp_Seleccionar_Usuario();