/*
SP_SELECCIOANR_MARCA
pararm: _ID_Marca - id de la marca a seleccionar
fecha: 19/09/2023
autor: Vicente Tomas Contreras Duarte
*/


-- seleccioanr marca

delimiter $$
Create PROCEDURE SP_SELECCIOANR_MARCA(
    IN _ID_Marca int
)
BEGIN 
    SELECT * FROM Marca
    where ID_Marca = _ID_Marca;
END $$