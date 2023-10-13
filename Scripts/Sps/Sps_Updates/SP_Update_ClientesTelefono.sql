/*
SP_Update_ClientesTelefono
pararm: cliente_id - id del cliente a modificar
        Nuevo_Telefono - nuevo numero de telefono
fecha: 29/09/2023
autor: Vicente Tomas Contreras Duarte
*/
use basebaterias;


-- UPDATE CLIENTES TELEFONO
delimiter $$
Create PROCEDURE SP_Update_ClientesTelefono(
    In cliente_id INT,
    In Nuevo_Telefono VARCHAR(12)
)
BEGIN
    Update ClientesTelefono
    SET Telefono = Nuevo_Telefono
    WHERE cliente_id = Id_Cliente;
END $$