/*
SP_ObtenerClientePorId
pararm: _cliente_id - id del cliente a obtener toda su informacion
fecha: 29/09/2023
autor: Vicente Tomas Contreras Duarte
*/

-- Este sp se encarga de obtener todos los datos de un cliente ingresando la id


DELIMITER $$
CREATE PROCEDURE SP_ObtenerClientePorId(
	IN _cliente_id INT
)
BEGIN
    SELECT C.Id_Cliente, C.Nombre, C.Apellido, CT.Telefono, CU.Ubicacion
    FROM Clientes C
    LEFT JOIN ClientesTelefono CT ON C.Id_Cliente = CT.Id_Cliente
    LEFT JOIN ClientesUbicacion CU ON C.Id_Cliente = CU.Id_Cliente
    WHERE C.Id_Cliente = _cliente_id;
END $$

-- call SP_ObtenerClientePorId(ID_CLIENTE)