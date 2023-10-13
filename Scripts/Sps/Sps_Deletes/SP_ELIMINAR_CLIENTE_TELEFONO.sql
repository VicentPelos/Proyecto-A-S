/*
SP_ELIMINAR_CLIENTE_TELEFONO
pararm: _Id_Cliente - id del cliente a elimiar telefono
fecha: 29/09/2023
autor: José Ignacio Morales González 
*/

USE BaseBaterias;

-- ELIMINAR CLIENTESTELEFONO
delimiter $$
CREATE PROCEDURE SP_ELIMINAR_CLIENTE_TELEFONO(
    in _Id_Cliente int
)
BEGIN
    DELETE FROM ClientesTelefono
    where Id_Cliente = _Id_Cliente;
END $$