/*
SP_ELIMINAR_Metodos_Pagos
pararm: _ID_Metodos_Pagos - id del metodo de pago a eliminar
fecha: 29/09/2023
autor: Vicente Tomas Contreras Duarte 
*/

USE BaseBaterias;


-- eliminar Metodos_Pagos

DELIMITER $$
CREATE PROCEDURE SP_ELIMINAR_Metodos_Pagos(
    IN _ID_Metodos_Pagos INT
)
BEGIN
    DELETE FROM Metodos_Pagos
    WHERE ID_Metodos_Pagos = _ID_Metodos_Pagos;
END $$