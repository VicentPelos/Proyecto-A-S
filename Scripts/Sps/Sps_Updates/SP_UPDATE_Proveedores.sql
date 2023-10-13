/*
SP_UPDATE_Proveedores
pararm: proveedor_id - id del proveedor a modificar
        nuevo_nombre - Nombre nuevo
fecha: 29/09/2023
autor: Vicente Tomas Contreras Duarte
*/
use basebaterias;

--UPDATE Proveedores
DELIMITER $$
CREATE PROCEDURE SP_UPDATE_Proveedores(
    IN proveedor_id INT,
    IN nuevo_nombre VARCHAR(150)
)
BEGIN
    UPDATE Proveedores
    SET Nombre = nuevo_nombre
    WHERE ID_Proveedor = proveedor_id;
END $$