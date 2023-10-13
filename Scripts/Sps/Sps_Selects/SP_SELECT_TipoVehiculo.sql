/*
SP_SELECT_TipoVehiculo
pararm: _ID_TipoVehiculo - id del vehiculo a seleccioanr
fecha: 19/09/2023
autor: Vicente Tomas Contreras Duarte
*/

-- seleccionar TipoVehiculo
delimiter $$
Create PROCEDURE SP_SELECT_TipoVehiculo(
    iN _ID_TipoVehiculo INT
)
BEGIN
    SELECT * FROM TipoVehiculo
    where ID_TipoVehiculo = _ID_TipoVehiculo;
End $$