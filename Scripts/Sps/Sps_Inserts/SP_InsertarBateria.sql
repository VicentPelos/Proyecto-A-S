/*
SP_InsertarBateria
pararm: _IdProveedor - id del proveedor de la bateria
        _IdMarca - marca de la bateria
        _IdOrientacionBorne - id de la orientacion del borne de la bateria
        _IdTipoVehiculo - id del tipo de vehiculo de la bateria
        _AMP - amp de la bateria
        _Dimensiones - demensiones de la bateria
        _CCA - cca de la bateria
        _Voltaje - voltaje de la bateria
        _FechaFabricacion -- fecha de fabricacion de la bateria
        _Modelo -- modelo de la bateria
        _Precio -- precio de la batera
        _Garantia -- garantia de la bateria
fecha: 19/09/2023
autor: Vicente Tomas Contreras Duarte
*/

USE BaseBaterias;

-- insertar baterias 

DELIMITER $$
CREATE PROCEDURE SP_InsertarBateria(
    IN _IdProveedor INT,
    IN _IdMarca INT,
    IN _IdOrientacionBorne INT,
    IN _IdTipoVehiculo INT,
    IN _AMP VARCHAR(25),
    IN _Dimensiones VARCHAR(50),
    IN _CCA INT,
    IN _Voltaje DECIMAL(5,2),
    IN _FechaFabricacion DATE,
    IN _Modelo VARCHAR(25),
    IN _Precio DECIMAL(10,2),
    IN _Garantia DATE
)
BEGIN
    INSERT INTO Baterias (ID_Proveedor, ID_Marca, ID_Orientacion_Borne, ID_TipoVehiculo, AMP, Dimensiones, CCA, Voltaje, Fecha_Fabricacion, Modelo, precio, garantia)
    VALUES (_IdProveedor, _IdMarca, _IdOrientacionBorne, _IdTipoVehiculo, _AMP, _Dimensiones, _CCA, _Voltaje, _FechaFabricacion, _Modelo, _Precio, _Garantia);
END$$

-- call SP_InsertarBateria()