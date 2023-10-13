/*
Antes de ejecutar asegurese de crear todos los procedimientos almacenados de insertar datos (Sps_Inserts)
fecha: 29/09/2023
autores: Todos los miembros 
*/

USE BaseBaterias;

CALL SP_Insertar_Cliente("Cristiano", "Ronaldo");
CALL SP_Insertar_Cliente("Lionel", "Messi");
CALL SP_Insertar_Cliente("Jude", "Bellingham");
CALL SP_Insertar_Cliente("Aragorn", "Llanomir");
CALL SP_Insertar_Cliente("Benjamin","Ceron");
CALL SP_Insertar_Cliente("Valeria", "Espadafuego");
CALL SP_Insertar_Cliente("Daenerys", "Targaryen");
CALL SP_Insertar_Cliente("David","Fernández");
CALL SP_Insertar_Cliente("Laura","González");
CALL SP_Insertar_Cliente("Sergio","Ramos");

Call SP_Insertar_Telefono(1,"+56971793586");
Call SP_Insertar_Telefono(2,"+56941733526");
Call SP_Insertar_Telefono(3,"+56923496546");
Call SP_Insertar_Telefono(4,"+56961899546");
Call SP_Insertar_Telefono(5,"+56972713485");
Call SP_Insertar_Telefono(6,"+56931723688");
Call SP_Insertar_Telefono(7,"+56921793584");
Call SP_Insertar_Telefono(8,"+56931743788");
Call SP_Insertar_Telefono(9,"+56934746596");
Call SP_Insertar_Telefono(10,"+56911233566");

Call SP_Insertar_ClientesUbicacion(1,"San Fernando");
Call SP_Insertar_ClientesUbicacion(2,"Santiago");
Call SP_Insertar_ClientesUbicacion(3,"Malloa");
Call SP_Insertar_ClientesUbicacion(4,"Rengo");
Call SP_Insertar_ClientesUbicacion(5,"Rancagua");
Call SP_Insertar_ClientesUbicacion(6,"San Vicente");
Call SP_Insertar_ClientesUbicacion(7,"Peor Es Nada");
Call SP_Insertar_ClientesUbicacion(8,"Los Angeles");
Call SP_Insertar_ClientesUbicacion(9,"San Fernando");
Call SP_Insertar_ClientesUbicacion(10,"Valdivia");

Call SP_Insertar_Proveedores("Willard");
Call SP_Insertar_Proveedores("Bosch");
Call SP_Insertar_Proveedores("Varta");
Call SP_Insertar_Proveedores("Exide");
Call SP_Insertar_Proveedores("Tudor");
Call SP_Insertar_Proveedores("Hankook");
Call SP_Insertar_Proveedores("ACDelco");
Call SP_Insertar_Proveedores("Energizer");
Call SP_Insertar_Proveedores("Yuasa");
Call SP_Insertar_Proveedores("Baterías LTH");

Call SP_Insertar_ProveedorCorreo(1, "infodesk@willardlibrary.org");
Call SP_Insertar_ProveedorCorreo(2, "Bosch@gmail.com");
Call SP_Insertar_ProveedorCorreo(3, "Varta@Hotmail.com");
Call SP_Insertar_ProveedorCorreo(4, "exide.spain@exidegroup.com.");
Call SP_Insertar_ProveedorCorreo(5, "Tudor@Hypixel.org");
Call SP_Insertar_ProveedorCorreo(6, "Hankook@gmail.com");
Call SP_Insertar_ProveedorCorreo(7, "ACDelco@hotmail.com");
Call SP_Insertar_ProveedorCorreo(8, "Energizer@gmail.com");
Call SP_Insertar_ProveedorCorreo(9, "Yuasa@hotmail.com");
Call SP_Insertar_ProveedorCorreo(10, "callcenter@lthservicioadomicilio.com");

Call SP_INSERTAR_PROVEEDORTELEFONO(1, "+56972734598");
Call SP_INSERTAR_PROVEEDORTELEFONO(2, "+56912334458");
Call SP_INSERTAR_PROVEEDORTELEFONO(3, "+56962724238");
Call SP_INSERTAR_PROVEEDORTELEFONO(4, "+56912334588");
Call SP_INSERTAR_PROVEEDORTELEFONO(5, "+56922544568");
Call SP_INSERTAR_PROVEEDORTELEFONO(6, "+56945737589");
Call SP_INSERTAR_PROVEEDORTELEFONO(7, "+56932034090");
Call SP_INSERTAR_PROVEEDORTELEFONO(8, "+56922734520");
Call SP_INSERTAR_PROVEEDORTELEFONO(9, "+56970734394");
Call SP_INSERTAR_PROVEEDORTELEFONO(10, "+56922335578");

Call SP_Insertar_MARCA("Duramax");
Call SP_Insertar_MARCA("Silvercast");
Call SP_Insertar_MARCA("ToPower");
Call SP_Insertar_MARCA("Dexxa");
Call SP_Insertar_MARCA("Troman");
Call SP_Insertar_MARCA("Korpower");
Call SP_Insertar_MARCA("Powermax");

Call SP_INSERTAR_Orientacion_Borne("Top Post");
Call SP_INSERTAR_Orientacion_Borne("Side Post");
Call SP_INSERTAR_Orientacion_Borne("Tapered Post");
Call SP_INSERTAR_Orientacion_Borne("Threaded Post");
Call SP_INSERTAR_Orientacion_Borne("Flag Terminal");

Call SP_INSERTAR_TipoVehiculo("Automovil");
Call SP_INSERTAR_TipoVehiculo("Camioneta ");
Call SP_INSERTAR_TipoVehiculo("Tractor");
Call SP_INSERTAR_TipoVehiculo("Camion");
Call SP_INSERTAR_TipoVehiculo("Furgonetas");
Call SP_INSERTAR_TipoVehiculo("SUV");

Call SP_InsertarBateria(1,1,1,1,"140","9.0 x 8.5 x 11.0 pulgadas",1100,12.0,"2023-06-15","BOS-110",118000.0,"2024-09-30");
Call SP_InsertarBateria(2,2,1,1,"75","7.5 x 6.75 x 8.5 pulgadas",600,12.0,"2023-05-10","DUR-75",78000.0,"2024-01-15");
Call SP_InsertarBateria(5,3,2,2,"85","7.0 x 6.5 x 9.0 pulgadas",700,12.0,"2023-04-30","SILV-85",91000.0,"2024-02-20");
Call SP_InsertarBateria(3,5,3,3,"110","8.0 x 7.5 x 10.0 pulgadas",900,12.0,"2023-03-25","TP-110",126000.0,"2024-03-25");
Call SP_InsertarBateria(7,4,4,4,"150","9.0 x 8.5 x 11.0 pulgadas",1200,24.0,"2023-02-20","DEX-150",169000.0,"2024-04-30");
Call SP_InsertarBateria(4,6,5,4,"140","9.0 x 8.5 x 11.0 pulgadas",1100,24.0,"2023-01-15","VAR-140",139000.0,"2024-10-05");
Call SP_InsertarBateria(6,1,5,5, "120", "8.5 x 7.75 x 9.25 pulgadas", 850, 12.0, "2023-07-05", "DUR-120", 95000.0, "2024-02-05");
Call SP_InsertarBateria(7,2,2,6, "90", "7.25 x 6.5 x 8.75 pulgadas", 750, 12.0, "2023-08-10", "SILV-90", 85000.0, "2024-03-10");
Call SP_InsertarBateria(8,3,1,4, "160", "9.5 x 8.75 x 10.5 pulgadas", 1300, 24.0, "2023-09-15", "TP-160", 160000.0, "2024-04-15");
Call SP_InsertarBateria(9,4,4,3, "130", "9.25 x 8.5 x 10.25 pulgadas", 1000, 12.0, "2023-10-20", "DEX-130", 110000.0, "2024-05-20");

Call SP_INSERT_MetodosPagos("Tarjeta de Crédito");
Call SP_INSERT_MetodosPagos("Transferencia Bancaria");
Call SP_INSERT_MetodosPagos("PayPal");
Call SP_INSERT_MetodosPagos("Efectivo");
Call SP_INSERT_MetodosPagos("Cheque");
Call SP_INSERT_MetodosPagos("Débito");
Call SP_INSERT_MetodosPagos("Criptomoneda");

CAll SP_INSERT_Ordenes(1,3,"2023-10-08");
CALL SP_INSERT_Ordenes(2,2,"2023-04-03");
CALL SP_INSERT_Ordenes(2,3,"2023-07-24");
CALL SP_INSERT_Ordenes(9,4,"2023-07-29");
CALL SP_INSERT_Ordenes(5,4,"2023-04-25");
CALL SP_INSERT_Ordenes(4,6,"2023-01-12");
CALL SP_INSERT_Ordenes(10,4,"2023-02-04");
CALL SP_INSERT_Ordenes(5,4,"2023-08-19");
CALL SP_INSERT_Ordenes(2,2,"2023-05-21");
CALL SP_INSERT_Ordenes(1,7,"2023-09-01");


Call SP_INSERT_OrdenesDetalles(1,2,5);
Call SP_INSERT_OrdenesDetalles(2,5,10);
Call SP_INSERT_OrdenesDetalles(5,2,2);
Call SP_INSERT_OrdenesDetalles(3,5,4);
Call SP_INSERT_OrdenesDetalles(8,4,5);
Call SP_INSERT_OrdenesDetalles(9,2,10);
Call SP_INSERT_OrdenesDetalles(4,10,23);
Call SP_INSERT_OrdenesDetalles(6,3,20);
Call SP_INSERT_OrdenesDetalles(7,2,10);
Call SP_INSERT_OrdenesDetalles(10,2,5);


