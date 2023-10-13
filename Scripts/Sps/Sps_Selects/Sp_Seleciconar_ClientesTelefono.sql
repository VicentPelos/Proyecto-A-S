/*
Sp_Seleciconar_ClientesTelefono
pararm: _Id_Cliente - id del cliente a seleccionar
fecha: 19/09/2023
autor: Vicente Tomas Contreras Duarte
*/

-- selecciona tabla ClientesTelefono

delimiter $$
Create PROCEDURE Sp_Seleciconar_ClientesTelefono(
    In _Id_Cliente int
)
BEGIN
    SELECT * from ClientesTelefono
    where Id_Cliente = _Id_Cliente;
END $$
-- call Sp_Seleciconar_ClientesTelefono();