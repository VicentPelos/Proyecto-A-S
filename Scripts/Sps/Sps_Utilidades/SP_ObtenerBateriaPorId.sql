/*
SP_ObtenerCostoTotal_Orden
pararm: bateria_id - id de la bateria de la cual desea ver toda su informacion
fecha: 29/09/2023
autor: Vicente Tomas Contreras Duarte
*/

-- Este SP obtiene todos los datos de una bateria ingresando su id

DELIMITER $$
CREATE PROCEDURE SP_ObtenerBateriaPorId(
	IN bateria_id INT
)
BEGIN
    SELECT B.ID_Bateria, P.Nombre AS Proveedor, M.Marca, OB.orientacion AS Orientacion_Borne, 
           TV.Tipo AS TipoVehiculo, B.AMP, B.Dimensiones, B.CCA, B.Voltaje, B.Fecha_Fabricacion, 
           B.Modelo, B.precio, B.garantia
    FROM Baterias B
    INNER JOIN Proveedores P ON B.ID_Proveedor = P.ID_Proveedor
    INNER JOIN Marca M ON B.ID_Marca = M.ID_Marca
    INNER JOIN Orientacion_Borne OB ON B.ID_Orientacion_Borne = OB.ID_Orientacion_Borne
    INNER JOIN TipoVehiculo TV ON B.ID_TipoVehiculo = TV.ID_TipoVehiculo
    WHERE B.ID_Bateria = bateria_id;
END $$

-- call SP_ObtenerBateriaPorId(ID_BATERIA);