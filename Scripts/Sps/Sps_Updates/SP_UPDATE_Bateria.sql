/*
SP_UPDATE_Bateria
pararm: _ID_Bateria - id de la bateria amodificar
        _ID_Proveedor - nuevo proveedor
        _ID_Marca - nueva marca
        _ID_Orientacion_Borne - nueva orientacion del borne
        _ID_TipoVehiculo - nuevo tipo de vehiculo
        _AMP - nuevo amp
        _Dimensiones - nuevas dimensiones
        _CCA - nuevo cca
        _Voltaje - nuevo voltaje
        _Fecha_Fabricacion - nueva fecha de fabricacion
        _Modelo - nuevo modelo
        _Precio - nuevo precio
        _Garantia - nueva garantia
fecha: 29/09/2023
autor: Vicente Tomas Contreras Duarte
*/
use basebaterias;

-- Update Baterias

DELIMITER $$
CREATE PROCEDURE SP_UPDATE_Bateria(
    IN _ID_Bateria INT,
    IN _ID_Proveedor INT,
    IN _ID_Marca INT,
    IN _ID_Orientacion_Borne INT,
    IN _ID_TipoVehiculo INT,
    IN _AMP VARCHAR(25),
    IN _Dimensiones VARCHAR(50),
    IN _CCA INT,
    IN _Voltaje DECIMAL(5,2),
    IN _Fecha_Fabricacion DATE,
    IN _Modelo VARCHAR(25),
    IN _Precio DECIMAL(10,2),
    IN _Garantia DATE
)
BEGIN
    UPDATE Baterias
    SET
        ID_Proveedor = _ID_Proveedor,
        ID_Marca = _ID_Marca,
        ID_Orientacion_Borne = _ID_Orientacion_Borne,
        ID_TipoVehiculo = _ID_TipoVehiculo,
        AMP = _AMP,
        Dimensiones = _Dimensiones,
        CCA = _CCA,
        Voltaje = _Voltaje,
        Fecha_Fabricacion = _Fecha_Fabricacion,
        Modelo = _Modelo,
        precio = _Precio,
        garantia = _Garantia
    WHERE ID_Bateria = _ID_Bateria;
END $$