CREATE DATABASE IF NOT EXISTS BaseBaterias CHARACTER SET utf8mb4;

USE BaseBaterias;

CREATE TABLE IF NOT EXISTS Clientes (
    Id_Cliente INT AUTO_INCREMENT PRIMARY KEY UNIQUE,
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100)NOT NULL
);
    
CREATE TABLE IF NOT EXISTS ClientesTelefono (
    Id_Cliente INT NOT NULL,
    Telefono VARCHAR(12) NOT NULL,
    FOREIGN KEY (Id_Cliente) REFERENCES Clientes(Id_Cliente)
);

CREATE TABLE IF NOT EXISTS ClientesUbicacion (
    Id_Cliente INT,
    Ubicacion VARCHAR(50) NOT NULL,
    FOREIGN KEY (Id_Cliente) REFERENCES Clientes(Id_Cliente)
);

CREATE TABLE IF NOT EXISTS Proveedores (
    ID_Proveedor INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Nombre VARCHAR(150) NOT NULL
);

CREATE TABLE IF NOT EXISTS ProveedorCorreo (
    ID_Proveedor INT NOT NULL,
    Correo VARCHAR(50) NOT NULL,
    FOREIGN KEY (ID_Proveedor) REFERENCES Proveedores(ID_Proveedor)
);

CREATE TABLE IF NOT EXISTS ProveedorTelefono (  
    ID_Proveedor INT NOT NULL,
    Telefono VARCHAR(12),
    FOREIGN KEY (ID_Proveedor) REFERENCES Proveedores(ID_Proveedor)
);

CREATE TABLE IF NOT EXISTS Marca (
    ID_Marca int UNIQUE AUTO_INCREMENT not null PRIMARY KEY,
    Marca varchar (35)
);

CREATE TABLE IF NOT EXISTS Orientacion_Borne (
    ID_Orientacion_Borne int UNIQUE AUTO_INCREMENT not null PRIMARY KEY,
    orientacion varchar (100)
);

CREATE TABLE IF NOT EXISTS TipoVehiculo (
    ID_TipoVehiculo int UNIQUE AUTO_INCREMENT not null PRIMARY KEY,
    Tipo varchar (35)
);

CREATE TABLE IF NOT EXISTS Baterias (
    ID_Bateria INT AUTO_INCREMENT PRIMARY KEY,
    ID_Proveedor INT NOT NULL,
    ID_Marca INT NOT NULL,
    ID_Orientacion_Borne int NOT NULL,
    ID_TipoVehiculo int NOT NULL,
    AMP varchar (25) NOT NULL,
    Dimensiones varchar(50) NOT NULL,
    CCA int NOT NULL,
    Voltaje Decimal(5,2),
    Fecha_Fabricacion DATE not null, 
    Modelo varchar (25) NOT NULL,
    precio Decimal(10,2),
    garantia DATE,
    FOREIGN KEY (ID_Proveedor) REFERENCES Proveedores(ID_Proveedor),
    FOREIGN KEY (ID_Marca) REFERENCES Marca(ID_Marca),
    FOREIGN KEY (ID_Orientacion_Borne) REFERENCES Orientacion_Borne(ID_Orientacion_Borne),
    FOREIGN KEY (ID_TipoVehiculo) REFERENCES TipoVehiculo(ID_TipoVehiculo)
);

CREATE TABLE IF NOT EXISTS Metodos_Pagos(
ID_Metodos_Pagos INT PRIMARY KEY AUTO_INCREMENT UNIQUE, 
Metodo_Pago varchar(30)
);

CREATE TABLE IF NOT EXISTS Ordenes (
ID_Orden INT AUTO_INCREMENT PRIMARY KEY,
ID_Cliente INT,
ID_Metodos_Pagos INT,
Fecha DATE,
FOREIGN KEY (ID_Cliente) REFERENCES Clientes(Id_Cliente),
FOREIGN KEY (ID_Metodos_Pagos) REFERENCES Metodos_Pagos(ID_Metodos_Pagos)
);

CREATE TABLE IF NOT EXISTS Ordenes_Detalles(
ID_Orden int,
ID_Bateria int,
Cantidad int, 
FOREIGN KEY (ID_Orden) REFERENCES Ordenes(ID_Orden),
FOREIGN KEY (ID_Bateria) REFERENCES Baterias(ID_Bateria)
); 