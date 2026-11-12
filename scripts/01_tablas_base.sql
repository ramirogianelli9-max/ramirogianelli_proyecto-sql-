-- Creación de la base de datos para logística
CREATE DATABASE LogisticaDB;
GO

-- Seleccionar la base de datos creada
USE LogisticaDB;
GO

-- 1. Tabla de Almacenes/Depósitos
CREATE TABLE Almacenes (
    AlmacenID INT IDENTITY(1,1) PRIMARY KEY,
    NombreDeposito VARCHAR(100) NOT NULL,
    UbicacionCiudad VARCHAR(50) NOT NULL,
    CapacidadMetrosCubicos DECIMAL(10,2) NOT NULL
);
GO

-- 2. Tabla de Transportistas / Conductores
CREATE TABLE Transportistas (
    TransportistaID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Licencia VARCHAR(20) NOT NULL,
    Telefono VARCHAR(20)
);
GO

-- 3. Tabla de Envíos / Órdenes Logísticas
CREATE TABLE Envios (
    EnvioID INT IDENTITY(1,1) PRIMARY KEY,
    AlmacenID INT FOREIGN KEY REFERENCES Almacenes(AlmacenID),
    TransportistaID INT FOREIGN KEY REFERENCES Transportistas(TransportistaID),
    DestinoDireccion VARCHAR(150) NOT NULL,
    DestinoCiudad VARCHAR(50) NOT NULL,
    PesoKg DECIMAL(8,2) NOT NULL,
    EstadoEnvio VARCHAR(30) DEFAULT 'Pendiente', -- Pendiente, En Tránsito, Entregado
    FechaDespacho DATE,
    FechaEntregaEstimada DATE
);
GO